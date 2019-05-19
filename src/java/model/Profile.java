/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Blob;

/**
 *
 * @author Lenovo
 */
public class Profile {
    public String Name;
    public String pp;

    public String getPp() {
        return pp;
    }

    public void setPp(String pp) {
        this.pp = pp;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getContactNo() {
        return ContactNo;
    }

    public void setContactNo(String ContactNo) {
        this.ContactNo = ContactNo;
    }

    public String getOccupation() {
        return Occupation;
    }

    public void setOccupation(String Occupation) {
        this.Occupation = Occupation;
    }

    public String getInstitution() {
        return Institution;
    }

    public void setInstitution(String Institution) {
        this.Institution = Institution;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
    public String Address;
    public String ContactNo;
    public String Occupation;
    public String Institution;
    public String Email;
    public String image;

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    public  Profile(){
        
    }
    public Profile(String Name,String Address, String ContactNo,String Occupation,String Institution,String Email,String image){
        this.Name=Name;
        this.Address=Address;
        this.ContactNo=ContactNo;
        this.Occupation=Occupation;
        this.Institution=Institution;
        this.Email=Email;
        this.image=image;
    }
}
