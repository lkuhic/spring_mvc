package ru.javastudy.mvcHtml5Angular.mvc.quartz;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Calendar;

public class QuartzTask {

    private static final Logger logger = LoggerFactory.getLogger(QuartzTask.class);

    public void simpleTaskMethod() {

        logger.info("Test Simple Quartz Time: " + Calendar.getInstance().getTime());
        System.out.println("Test Simple Quartz Time: " + Calendar.getInstance().getTime());

    }
}
