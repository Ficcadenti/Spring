package com.example.test;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.awt.print.Book;

@Log4j2
@RestController
@RequestMapping("api/v1/public")
class HomeController {

    @Operation(summary = "Ciao mondo !!!")
    @ApiResponse(responseCode = "200", description = "Il mondo ti sta salutando !!!" )
    @ApiResponse(responseCode = "200", description = "Il mondo ti sta salutando !!!" )
    @GetMapping(value = "/ciao",produces = "application/json")
    public String sayHello(@RequestParam(value = "name", defaultValue = "World") String name) {
        log.info("Request get received: /ciao");
        return String.format("Hello %s!", name);
    }
}
