package com.ray.springdemo.mvc;

import com.ray.springdemo.mvc.validation.CourseCode;

import javax.validation.constraints.*;

public class Customer {
    private String firstName;

    @NotNull(message = "is required")
    @Size(min=5)
    private String lastName;

    @NotNull(message = "is required")
    @Min(value=18, message = "must be at least 18")
    @Max(value = 120, message = "must be less than 120")
    private Integer age;

    @Pattern(regexp = "^[a-zA-Z0-9]{5}", message = "only 5 chars/digits")
    private String postalCode;

    @NotNull(message = "CourseCode is required")
    @CourseCode(value = "Code", message = "must start with Code")
    private String courseCode;

    public Customer() {
    }

    public String getFirstName() {
        return firstName;
    }


    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }
}
