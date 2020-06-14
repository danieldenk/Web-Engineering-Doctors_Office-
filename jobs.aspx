<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="jobs.aspx.cs" Inherits="jobs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Accordion ID="Accordion1" runat="server" HeaderCssClass="accordionhead" HeaderSelectedCssClass="accordionheadselected" TransitionDuration="500" RequireOpenedPane="True">
            <Panes>
               <asp:AccordionPane ID="AccordionPane1" runat="server">
                  <Header>Janitor</Header>
                  <Content>
                     Your job is to clean and maintain our stuff, so everything is working as intended. 
                      </br>
                      <ul>
                          <li>
                              <p>
                                  Workload per Week: <br />
                                  <strong>60</strong>
                              </p>
                          </li>
                          <li>
                              <p>
                                  Starting day: <br />
                                  <strong>Today</strong>
                              </p>
                          </li>
                          <li>
                              <p>
                                  Salary: <br />
                                  <strong>30 000 EvilCoins/Year</strong>
                              </p>
                          </li>
                      </ul>
                  </Content>       
               </asp:AccordionPane>
               <asp:AccordionPane ID="AccordionPane2" runat="server">
                  <Header>Evil Coordinator</Header>
                  <Content>
                     Your job is to coordinate everything starting from logistics up to the finances of our company.
                      </br>
                      <ul>
                          <li>
                              <p>
                                  Workload per Week: <br />
                                  <strong>80</strong>
                              </p>
                          </li>
                          <li>
                              <p>
                                  Starting day: <br />
                                  <strong>1st July 2020</strong>
                              </p>
                          </li>
                          <li>
                              <p>
                                  Salary: <br />
                                  <strong>100 000 EvilCoins/Year</strong>
                              </p>
                          </li>
                      </ul>
                  </Content>       
              </asp:AccordionPane>
              <asp:AccordionPane ID="AccordionPane3" runat="server">
                 <Header>Bookmaker</Header>
                 <Content>
                     Lets be honest, everyone hates tax. Therefore we need someone who takes care of our tax problems. 
                      </br>
                      <ul>
                          <li>
                              <p>
                                  Workload per Week: <br />
                                  <strong>40</strong>
                              </p>
                          </li>
                          <li>
                              <p>
                                  Starting day: <br />
                                  <strong>2nd April 2020</strong>
                              </p>
                          </li>
                          <li>
                              <p>
                                  Salary: <br />
                                  <strong>60 000 EvilCoins/Year</strong>
                              </p>
                          </li>
                      </ul>
                  </Content>       
              </asp:AccordionPane>
              
           </Panes>
        </asp:Accordion>
    <br />
    <em>If your job isn't listed here and you are interested in working for us, you can also just apply via mail. <br />We will see what we can do.</em>
</asp:Content>

