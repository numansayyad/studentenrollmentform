package com.project.studentenrollmentform.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity // Map this class to "students" table
@Getter
@Setter
@Table(name = "student") // ✅ Explicit table name
public class student {

    @Id // Primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-increment ID
    private Integer id;

    private String name;

    @Column(unique = true) // Email must be unique in DB
    private String email;
    private String qualification;
    private String gender;
    private String course;
    private String timings;
    private String address;
    private String mobileNo;


}
