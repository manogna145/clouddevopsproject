package com.klef.jfsd.springbootdemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.klef.jfsd.springbootdemo.model.Admin;
import com.klef.jfsd.springbootdemo.service.AdminService;

@RestController
@RequestMapping("/admin")
public class AdminController 
{
    @Autowired
    private AdminService adminService;

    @PostMapping("/login")
    public ResponseEntity<?> checkAdminLogin(@RequestBody String auname, @RequestParam String apwd)
    {
        Admin admin = adminService.checkadminlogin(auname, apwd);
        if(admin != null) {
            return ResponseEntity.ok("Login successful");
        } else {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid credentials");
        }
    }
    
    @GetMapping("/logout")
    public ResponseEntity<?> adminLogout() 
    {
        // Handle any logout logic here (e.g., session invalidation, if required)
        return ResponseEntity.ok("Logged out successfully");
    }
}
