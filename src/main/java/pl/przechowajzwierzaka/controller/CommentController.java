package pl.przechowajzwierzaka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.przechowajzwierzaka.model.*;
import pl.przechowajzwierzaka.repository.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/comments")
public class CommentController {

    @Autowired
    CommentRepository commentRepository;

    @Autowired
    BlogRepository blogRepository;

    @Autowired
    OfferRepository offerRepository;

    @Autowired
    ReviewRepository reviewRepository;

    @RequestMapping("/{type}/{id}")
    public String listComments(@PathVariable String type, @PathVariable long id, Model model) {
        String t = type.substring(0, 1);

        switch (type) {
            case "blog":
                Blog blog = blogRepository.findOne(id);
                List<Comment> comments_b = commentRepository.findAllByTypeAndBlogOrderByIdDesc(t, blog);
                model.addAttribute("comments", comments_b);
                break;
            case "offer":
                Offer offer = offerRepository.findOne(id);
                List<Comment> comments_o = commentRepository.findAllByTypeAndOfferOrderByIdDesc(t, offer);
                model.addAttribute("comments", comments_o);
                break;
            case "review":
                Review review = reviewRepository.findOne(id);
                List<Comment> comments_r = commentRepository.findAllByTypeAndReviewOrderByIdDesc(t, review);
                model.addAttribute("comments", comments_r);
                break;
        }

        Comment comment = new Comment();
        model.addAttribute("comment", comment);
        return "redirect:/" + type + "/see/" + id;
    }

    @RequestMapping(value = "/{type}/{id}", method = RequestMethod.POST)
    public String addComment(@PathVariable String type, @PathVariable long id, @Valid Comment comment, BindingResult result, @SessionAttribute User user) {
        if (result.hasErrors()) {
            System.out.println(result.getAllErrors());
            return "comments";
        }

        switch (type) {
            case "blog":
                Blog blog = blogRepository.findOne(id);
                comment.setBlog(blog);
                break;
            case "offer":
                Offer offer = offerRepository.findOne(id);
                comment.setOffer(offer);
                break;
            case "review":
                Review review = reviewRepository.findOne(id);
                comment.setReview(review);
                break;
        }

        long newid = 1;
        long commentsBefore = commentRepository.count();
        if (commentsBefore > 0) {
            newid = commentRepository.findFirstByOrderByIdDesc().getId() + 1;
        }

        comment.setId(newid);
        String timeStamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        comment.setCreated(timeStamp);
        comment.setUser(user);
        comment.setType(type.substring(0, 1));
        commentRepository.save(comment);
        return "redirect:/comments/" + type + "/" + id;
    }

    @RequestMapping("/flag/{id}")
    public String flagComment(@PathVariable long id, HttpServletRequest request) {
        commentRepository.flagById(id);
        String referer = request.getHeader("Referer");
        return "redirect:"+ referer;
    }

    @RequestMapping("/delete/{id}")
    public String deleteComment(@PathVariable long id, HttpServletRequest request) {
        commentRepository.delete(id);
        String referer = request.getHeader("Referer");
        return "redirect:"+ referer;
    }


}
