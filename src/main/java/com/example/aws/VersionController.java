package com.example.aws;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class VersionController {

    @Value("${app.version:unknown}")
    private String appVersion;

    @GetMapping("/version")
    public String version() {
        return appVersion;
    }
}