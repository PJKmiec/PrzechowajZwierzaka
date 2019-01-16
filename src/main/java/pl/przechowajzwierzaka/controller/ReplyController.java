package pl.przechowajzwierzaka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.przechowajzwierzaka.model.*;
import pl.przechowajzwierzaka.repository.CommentRepository;
import pl.przechowajzwierzaka.repository.ReplyRepository;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/reply")
public class ReplyController {

    @Autowired
    ReplyRepository replyRepository;

    @Autowired
    CommentRepository commentRepository;

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String addReply(@PathVariable long id, Model model, HttpServletRequest request) {
        String referer = request.getHeader("Referer");
        model.addAttribute("referer", referer);
        Comment comment = commentRepository.findOne(id);
        Reply reply = new Reply();
        reply.setComment(comment);
        model.addAttribute(reply);
        return "reply-add";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.POST)
    public String addReplyPost(@PathVariable long id, @Valid Reply reply, BindingResult result, @SessionAttribute User user, @RequestParam String referer) {
        if (result.hasErrors()) {
            System.out.println(result.getAllErrors());
            return "reply-add";
        }

        Comment comment = commentRepository.findOne(id);
        reply.setComment(comment);
        String timeStamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        reply.setCreated(timeStamp);
        reply.setUser(user);
        replyRepository.save(reply);
        return "redirect:"+ referer;
    }

    @RequestMapping("/flag/{id}")
    public String flagReply(@PathVariable long id, HttpServletRequest request) {
        replyRepository.flagById(id);
        String referer = request.getHeader("Referer");
        return "redirect:"+ referer;
    }

    @RequestMapping("/delete/{id}")
    public String deleteReply(@PathVariable long id, HttpServletRequest request) {
        replyRepository.delete(id);
        String referer = request.getHeader("Referer");
        return "redirect:"+ referer;
    }
}
