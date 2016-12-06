/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.simplewebapp.jsf.managedbeans;

import javax.inject.Named;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

/**
 *
 * @author Irvan
 */
@Named(value = "registrationBean")
@RequestScoped
@ManagedBean
public class RegistrationBean {

    /**
     * Creates a new instance of RegistrationBean
     */
    public RegistrationBean() {
    }
    
}
