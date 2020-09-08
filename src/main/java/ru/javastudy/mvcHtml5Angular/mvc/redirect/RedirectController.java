package ru.javastudy.mvcHtml5Angular.mvc.redirect;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class RedirectController {

    //redirect to external site
    @RequestMapping(value = "/redirectTarget", method = RequestMethod.GET)
    public String redirectTarget(HttpServletRequest request) {
        //request.getScheme - to get protocol (http, https etc.)
        return "redirect:" + request.getScheme() + "://sberbank.ru";
    }
}
