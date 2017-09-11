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
public class logInPageCursor {
    public String OrganizationName;
    public String Post;
    public String blob;
    public logInPageCursor(){
        
    }
    
    public logInPageCursor(String OrganizationName,String Post,String  blob){
        this.OrganizationName = OrganizationName;
        this.Post = Post;
        this.blob = blob;
    }
    public String getPost() {
        return Post;
    }

    public void setPost(String Post) {
        this.Post = Post;
    }

    public String getBlob() {
        return blob;
    }

    public void setBlob(String blob) {
        this.blob = blob;
    }
   

    public String getOrganizationName() {
        return OrganizationName;
    }

    public void setOrganizationName(String OrganizationName) {
        this.OrganizationName = OrganizationName;
    }
    
}
