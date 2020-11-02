<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="frm" %>

<h1 style="color:red;text-align:center"> Person Registration Page </h1>

<frm:form  modelAttribute="perFrm">
  <p style="color:red">
    <frm:errors path="*"/>
   </p>
  <table align="center"  bgcolor="cyan">
     <tr>
        <td>Person Name  </td>
        <td><frm:input path="name"/> </td>
     </tr>
     <tr>
        <td>Person Address  </td>
        <td><frm:input path="addrs"/> </td>
     </tr>
     <tr>
        <td>Person MobileNo  </td>
        <td><frm:input path="mobileNo"/> </td>
     </tr>
     <tr>
        <td>Person Gender  </td>
        <td>
            <frm:radiobuttons path="gender" items="${genderList}"/>
         </td>
     </tr>
     <tr>
        <td>Person Hobbies </td>
        <td><frm:checkboxes path="hobies"  items="${hobiesList}" /></td>
     </tr>
     <tr>
        <td>Person Qualification  </td>
        <td>
          <frm:select path="qlfy">
               <frm:options items="${qlfyList}"/>
           </frm:select>
         </td>
     </tr>
     <tr>
        <td>Person Favorite Color:: </td>
        <td>
             <frm:select path="colors" multiple="multiple">
                 <frm:options items="${colorsList}"/>
             </frm:select>
        </td>
     </tr>
      <tr>
        <td>DOB (DD-MM-YYYY)  </td>
        <td><frm:input type="date"  path="dob"/> </td>
     </tr>
     <tr>
        <td>DOJ (DD-MM-YYYY)  </td>
        <td><frm:input  type="date" path="doj"/> </td>
     </tr>
     <tr>
        <td>Person Salary Range  </td>
        <td><frm:input  type="range"  min="10000" max="200000"  path="salary"/> </td>
     </tr>
     
     
     <tr>
        <td colspan="2"> <input type="submit"  value="register"> </td>
     </tr>
  </table>
</frm:form>    