package pl.przechowajzwierzaka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.przechowajzwierzaka.model.Blog;
import pl.przechowajzwierzaka.model.Comment;
import pl.przechowajzwierzaka.repository.BlogRepository;
import pl.przechowajzwierzaka.repository.CommentRepository;

import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/blog")
public class BlogController {

    @Autowired
    BlogRepository blogRepository;

    @Autowired
    CommentRepository commentRepository;

    @RequestMapping("/all")
    public String listPosts(Model model) {
        List<Blog> posts = blogRepository.findAllByOrderByIdDesc();
        model.addAttribute("posts", posts);
        return "blog";
    }

    @RequestMapping("/see/{id}")
    public String seePost(@PathVariable long id, Model model) {
        Blog post = blogRepository.findOne(id);
        List<Comment> comments = commentRepository.findAllByTypeAndBlogOrderByIdDesc("b", post);
        model.addAttribute("post", post);
        model.addAttribute("comments", comments);
        model.addAttribute("comment", new Comment());
        return "blog-post";
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
        return "redirect:/blog/all";
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
        return "redirect:/blog/all";
    }

    @RequestMapping("/delete/{id}")
    public String deletePost(@PathVariable long id) {
        commentRepository.deleteAllByBlog(blogRepository.findOne(id));
        blogRepository.delete(id);
        return "redirect:/blog/all";
    }

}
