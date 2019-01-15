package pl.przechowajzwierzaka.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.przechowajzwierzaka.model.Offer;
import pl.przechowajzwierzaka.model.User;
import pl.przechowajzwierzaka.repository.OfferRepository;
import pl.przechowajzwierzaka.repository.UserRepository;

import javax.validation.Valid;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/offer")
public class OfferController {

    @Autowired
    private OfferRepository offerRepository;

    @ModelAttribute("requirements")
    public List<String> requirements() { return Arrays.asList("f", "w", "c", "g", "m", "t", "e", "v", "i"); }

    @RequestMapping("/edit")
    public String listOffers(Model model) {
        List<Offer> offers = offerRepository.findAll();
        model.addAttribute("offers", offers);
        return "offers";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addOffer(Model model) {
        Offer offer = new Offer();
        model.addAttribute(offer);
        return "offer-add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addOfferPost(@Valid Offer offer, BindingResult result, @SessionAttribute User user) {
        if (result.hasErrors()) {
            System.out.println(result.getAllErrors());
            return "offer-add";
        }

        String timeStamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        offer.setCreated(timeStamp);
        offer.setUser(user);
        offerRepository.save(offer);
        return "redirect:/offer/edit";
    }

    @RequestMapping("/edit/{id}")
    public String editOffer(@PathVariable long id, Model model) {
        Offer offer = offerRepository.findOne(id);
        model.addAttribute(offer);
        return "offer-add";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editOfferPost(@PathVariable long id, @Valid Offer offer, BindingResult result) {
        if (result.hasErrors()) {
            return "offer-add";
        }
        Offer original = offerRepository.findOne(id);
        offer.setId(id);
        String timeStamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        offer.setEdited(timeStamp);
        offer.setUser(original.getUser());
        offerRepository.save(offer);
        return "redirect:/offer/edit";
    }

    @RequestMapping("/delete/{id}")
    public String deleteOffer(@PathVariable long id) {
        offerRepository.delete(id);
        return "redirect:/offer/edit";
    }

}
