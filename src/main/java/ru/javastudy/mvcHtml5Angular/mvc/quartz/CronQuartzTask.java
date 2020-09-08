package ru.javastudy.mvcHtml5Angular.mvc.quartz;

import java.util.Calendar;

public class CronQuartzTask {
    public void cronTaskMethod() {
        //can send emails
        System.out.println("Cron Time: " + Calendar.getInstance().getTime());
    }
}
