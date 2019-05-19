/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import sun.management.resources.agent;

/**
 *
 * @author Lenovo
 */
public class Children {
    private String Name;
    private String ParentName;

    public String getParentName() {
        return ParentName;
    }

    public void setParentName(String ParentName) {
        this.ParentName = ParentName;
    }
    
    public Children (){
        
        
    }
    public Children(String Name, String Age,String ParentName){
        this.Name = Name;
        this.Age = Age;
        this.ParentName = ParentName;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getAge() {
        return Age;
    }

    public void setAge(String Age) {
        this.Age = Age;
    }
    private String Age;
    
}
