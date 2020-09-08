package ru.javastudy.mvcHtml5Angular.mvc.interceptors;

import org.apache.maven.model.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InterceptorController {

    @RequestMapping(value = "/interceptorCall/subLevel", method = RequestMethod.GET)
    public ModelAndView interceptorCall() {
        System.out.println("Interceptor is called");
        return new ModelAndView("/index");
    }
}
