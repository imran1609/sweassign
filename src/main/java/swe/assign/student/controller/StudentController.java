package swe.assign.student.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import swe.assign.student.model.UserInfo;
import swe.assign.student.service.UserService;

@RestController
@RequestMapping(produces="application/json")
public class StudentController {

    @Autowired
    UserService userService;

    @CrossOrigin
    @RequestMapping(value = {"/", "/survey"}, method = RequestMethod.GET)
    public String userForm() {
        System.out.println("user Form");
        return "survey";

    }

    @CrossOrigin
    @RequestMapping(value = {"/saveForm"}, method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity saveForm( @RequestBody UserInfo userInfo) {

        try {
            System.out.println("userInfo " + userInfo);
            userService.saveUserInfo(userInfo);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity<>(HttpStatus.ACCEPTED);
    }

    @CrossOrigin
    @RequestMapping(value = {"/listUser"}, method = RequestMethod.GET, produces = "application/json")
    /* method to list users*/
    public ResponseEntity<String> listUser() {

        try {
            System.out.println("list all users");
            return ResponseEntity.accepted().body(userService.listUser());

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return ResponseEntity.internalServerError().build();
    }

}
