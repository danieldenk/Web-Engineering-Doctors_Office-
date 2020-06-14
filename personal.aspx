<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="personal.aspx.cs" Inherits="personal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Our team consists of</h2>
    <div style="border: 2px solid grey;margin-bottom:80px;">
        <div style="border: 1px solid grey;">
            <div class="row">
                <div class="col">
                    <img src="https://pbs.twimg.com/profile_images/1179057227103166465/fPsvR5h7_400x400.jpg" style="width:150px;height:150px;"/>
                    <strong>Dr. Heinz Doofenshmirtz</strong>
                </div>
                <div class="col">
                    <p style="margin-top:60px;">I have been a professional professionalist my whole life.</p>
                </div>
            </div>
        </div>

        <div style="border: 1px solid grey;">
            <div class="row">
                <div class="col">
                    <img src="https://i.pinimg.com/originals/fa/f9/d0/faf9d05c08e9ef78b7b2c43b328a864b.jpg" style="width:150px;height:210px;" />
                    <strong>Dr. Stephen Strange (Substitute for Dr. Doom)</strong>
                </div>
                <div class="col">
                    <p style="margin-top:90px;">I protect you from all evil forces and beyond.</p>
                </div>
            </div>
        </div>

       <div style="border: 1px solid grey;">
            <div class="row">
                <div class="col">
                    <img src="https://styla-prod-us.imgix.net/c9f5b6ececf4d0febbb82f0dabcab5ce?auto=format%2Ccompress&w=1023.75&h=908.25&fit=crop&crop=faces%2Cedges" style="width:150px;height:150px;" />
                    <strong>Dr. Hannibal Lecter</strong>
                </div>
                <div class="col">
                    <p style="margin-top:60px;">I take care of you as a good cook takes care of a pricey steak.</p>
                </div>
            </div>
        </div>



    </div>
 
</asp:Content>

