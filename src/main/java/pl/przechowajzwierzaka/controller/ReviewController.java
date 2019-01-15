package pl.przechowajzwierzaka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.przechowajzwierzaka.model.Offer;
import pl.przechowajzwierzaka.model.Review;
import pl.przechowajzwierzaka.model.User;
import pl.przechowajzwierzaka.repository.OfferRepository;
import pl.przechowajzwierzaka.repository.ReviewRepository;

import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/review")
public class ReviewController {

    @Autowired
    private ReviewRepository reviewRepository;

    @Autowired
    private OfferRepository offerRepository;

    @RequestMapping("/edit")
    public String listReviews(Model model) {
        List<Review> reviews = reviewRepository.findAll();
        model.addAttribute("reviews", reviews);
        return "reviews";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addReview(Model model) {
        Review review = new Review();
        model.addAttribute(review);
        return "review-add";
    }

    @RequestMapping(value = "/add/{id}", method = RequestMethod.GET)
    public String addReviewToOffer(@PathVariable long id, Model model) {
        Offer offer = offerRepository.findOne(id);
        Review review = new Review();
        review.setUser(offer.getUser());
        review.setRequirements(offer.getRequirements());
        model.addAttribute(review);
        return "review-add";
    }

    @RequestMapping(value = "/add/{id}", method = RequestMethod.POST)
    public String addReviewPost(@PathVariable long id, @Valid Review review, BindingResult result, @SessionAttribute User user) {
        if (result.hasErrors()) {
            System.out.println(result.getAllErrors());
            return "review-add";
        }

        Offer offer = offerRepository.findOne(id);
        review.setUser(offer.getUser());
        review.setRequirements(offer.getRequirements());
        String timeStamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        review.setCreated(timeStamp);
        review.setAuthor(user);
        reviewRepository.save(review);
        return "redirect:/review/edit";
    }

    @RequestMapping("/edit/{id}")
    public String editReview(@PathVariable long id, Model model) {
        Review review = reviewRepository.findOne(id);
        model.addAttribute(review);
        return "review-add";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editReviewPost(@PathVariable long id, @Valid Review review, BindingResult result) {
        if (result.hasErrors()) {
            return "review-add";
        }
        Review original = reviewRepository.findOne(id);
        review.setId(id);
        String timeStamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        review.setEdited(timeStamp);
        review.setUser(original.getUser());
        review.setAuthor(original.getAuthor());
        review.setRequirements(original.getRequirements());
        reviewRepository.save(review);
        return "redirect:/review/edit";
    }

    @RequestMapping("/delete/{id}")
    public String deleteReview(@PathVariable long id) {
        reviewRepository.delete(id);
        return "redirect:/review/edit";
    }


}
