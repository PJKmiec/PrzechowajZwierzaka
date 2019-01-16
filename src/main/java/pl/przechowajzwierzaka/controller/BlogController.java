package pl.przechowajzwierzaka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.przechowajzwierzaka.model.Blog;
import pl.przechowajzwierzaka.repository.BlogRepository;

import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/blog")
public class BlogController {

    @Autowired
    BlogRepository blogRepository;

    @RequestMapping("/edit")
    public String listPosts(Model model) {
        List<Blog> posts = blogRepository.findAll();
        model.addAttribute("posts", posts);
        return "blog";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPost(Model model) {
        Blog post = new Blog();
        model.addAttribute(post);
        return "blog-add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addPostPost(@Valid Blog post, BindingResult result) {
        if (result.hasErrors()) {
            System.out.println(result.getAllErrors());
            return "blog-add";
        }

        String timeStamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        post.setCreated(timeStamp);
        blogRepository.save(post);
        return "redirect:/blog/edit";
    }

    @RequestMapping("/edit/{id}")
    public String editPost(@PathVariable long id, Model model) {
        Blog post = blogRepository.findOne(id);
        model.addAttribute(post);
        return "blog-add";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editReviewPost(@PathVariable long id, @Valid Blog post, BindingResult result) {
        if (result.hasErrors()) {
            return "blog-add";
        }
        post.setId(id);
        String timeStamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        post.setEdited(timeStamp);
        blogRepository.save(post);
        return "redirect:/blog/edit";
    }

    @RequestMapping("/delete/{id}")
    public String deletePost(@PathVariable long id) {
        blogRepository.delete(id);
        return "redirect:/blog/edit";
    }

}
