<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" Culture="auto:en-US" UICulture="auto"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div>
        <!-- Login: admin - adminadmin! //same for other groups -->
         <div>
          <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
             <h2><asp:Label ID="Label1" runat="server" Text="<%$ Resources:Resource, String1 %>"></asp:Label>&nbsp;</h2>
                
            </AnonymousTemplate>


             <RoleGroups>

                <asp:RoleGroup Roles="admin">
                  <ContentTemplate>
                     <h2><asp:Label ID="Label2" runat="server" Text="<%$ Resources:Resource, String1 %>"></asp:Label><asp:LoginName ID="LoginName1" runat="server" />! </h2>
                      <br />
                       <p><asp:Label ID="Label3" runat="server" Text="<%$ Resources:Resource, String2 %>"></asp:Label></p>
                    <asp:TreeView ID="TreeView1" DataSourceID="AdminSiteMapDataSource" runat="server" NodeIndent="10" ShowExpandCollapse="False" NodeStyle-CssClass="menunode" HoverNodeStyle-CssClass="menunodehover" SelectedNodeStyle-CssClass="menunodeselected" RootNodeStyle-CssClass="rootnode" ParentNodeStyle-CssClass="parentnode">
                    </asp:TreeView>
                  </ContentTemplate>
                </asp:RoleGroup>

                <asp:RoleGroup Roles="doctor">
                  <ContentTemplate>
                     <h2><asp:Label ID="Label4" runat="server" Text="<%$ Resources:Resource, String1 %>"></asp:Label><asp:LoginName ID="LoginName1" runat="server" />! </h2>
                      <br />
                       <p><asp:Label ID="Label5" runat="server" Text="<%$ Resources:Resource, String2 %>"></asp:Label></p>
                    <asp:TreeView ID="TreeView1" DataSourceID="DoctorSiteMapDataSource" runat="server" NodeIndent="10" ShowExpandCollapse="False" NodeStyle-CssClass="menunode" HoverNodeStyle-CssClass="menunodehover" SelectedNodeStyle-CssClass="menunodeselected" RootNodeStyle-CssClass="rootnode" ParentNodeStyle-CssClass="parentnode">
                    </asp:TreeView>
                  </ContentTemplate>
                </asp:RoleGroup>

                <asp:RoleGroup Roles="patient">
                  <ContentTemplate>
                     <h2><asp:Label ID="Label6" runat="server" Text="<%$ Resources:Resource, String1 %>"></asp:Label><asp:LoginName ID="LoginName1" runat="server" />! </h2>
                      <br />
                       <p><asp:Label ID="Label7" runat="server" Text="<%$ Resources:Resource, String2 %>"></asp:Label></p>
                    <asp:TreeView ID="TreeView1" DataSourceID="PatientSiteMapDataSource" runat="server" NodeIndent="10" ShowExpandCollapse="False" NodeStyle-CssClass="menunode" HoverNodeStyle-CssClass="menunodehover" SelectedNodeStyle-CssClass="menunodeselected" RootNodeStyle-CssClass="rootnode" ParentNodeStyle-CssClass="parentnode">
                    </asp:TreeView>
                  </ContentTemplate>
                </asp:RoleGroup>
         
             
            <asp:RoleGroup Roles="secretary">
                  <ContentTemplate>
                     <h2><asp:Label ID="Label8" runat="server" Text="<%$ Resources:Resource, String1 %>"></asp:Label><asp:LoginName ID="LoginName1" runat="server" />! </h2>
                      <br />
                       <p><asp:Label ID="Label9" runat="server" Text="<%$ Resources:Resource, String2 %>"></asp:Label></p>
                    <asp:TreeView ID="TreeView1" DataSourceID="SecretarySiteMapDataSource" runat="server" NodeIndent="10" ShowExpandCollapse="False" NodeStyle-CssClass="menunode" HoverNodeStyle-CssClass="menunodehover" SelectedNodeStyle-CssClass="menunodeselected" RootNodeStyle-CssClass="rootnode" ParentNodeStyle-CssClass="parentnode">
                    </asp:TreeView>
                  </ContentTemplate>
                </asp:RoleGroup>
         
              </RoleGroups>
      
          </asp:LoginView>
        </div> 

    <br />
    <p><asp:Label ID="Label10" runat="server" Text="<%$ Resources:Resource, String3 %>"></asp:Label></p>
    <p><asp:Label ID="Label11" runat="server" Text="<%$ Resources:Resource, String4 %>"></asp:Label></p>
        <p><asp:Label ID="Label12" runat="server" Text="<%$ Resources:Resource, String5 %>"></asp:Label></p>
    <br />
        <img src="https://geekologie.com/2012/05/29/sub-base-1.jpg" style="border-radius:5px;"/>
    </div>

    <div class="row" style="margin-top:20px;">
        <div class="col" >
            <strong><asp:Label ID="Label13" runat="server" Text="<%$ Resources:Resource, String6 %>"></asp:Label></strong>
            <br />
            <img style="width:70px;" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8PDw8PDQ8QDw8ODw4PDw8PDw8ODw4NFREWFhURFRYYHSggGBomHRUXIjEhJSorLi4uFx8zOD8xQyktLisBCgoKDg0OFRAQFjclHh4tNy4rNy0rKysyNys1KzcrLS0tOC0vLS0tNy0rLSstLS0uKy0rNS03LS0rLy0tLS0xK//AABEIAMIBAwMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAAAAQIFAwYHBP/EAEoQAAEDAgMEAwwHBAgHAQAAAAEAAgMEEQUhMQYSQVETYXEHFBYiMkJSU2KSk9FUcoGRobHSI2OUwTNDoqPC0+HxFRd0srPD8ET/xAAaAQEBAAMBAQAAAAAAAAAAAAAAAQIDBQQG/8QALBEBAAICAQMACgEFAAAAAAAAAAECAxESBCExBRMUIkFRYZGh8FJxcrHB0f/aAAwDAQACEQMRAD8A0ZNJNZIaEk0DQldAKod0JIQNCSEQ0JIQNJCSBpIQqBRKaiVAiUiUyVEoESolMqJUUXUSmVEoEUigpFRSSTSUAkmUlFCEIUDQkhBYppJrNiaEk0FjhuJ9HZsjRJH2Aub2E6jqWywdDI0OYGOaeIaMuo8itJWekq3xO3ozY8R5rhyIQbn3tH6tnuN+SiaSL1Ufw2fJeXDcVZNl5EnoHj9U8VYIjB3jD6mL4bPkqfE8C1fT9pj/AEn+X+yv0Ko0IgjI5EZEHIg8kluGJYXHPn5MnB4H4OHELVqyjkhduyC19HDNrh1FVWBCSEAkhCAUUyolAKJTUSikUimVu2yHc+mq92as3qemyIba087eoHyG+0czwGd1BrGBYFU10nRUse8Rbfe7xYohze7h2Zk8AV1vAe55Q08dqiNtXK62/JK3xQeTGXs0feT+A2bDsPhpomw08bYo2aNaOPEk6kniTmV6VjMqo/BDDPoNN8IJ+COGfQKb4LVdqEsjWtLnkNa0FznOIa1rRqSToFBT+COGfQKX4LFrm1j8Cw5pa+hpZagi7KdkUe9no55t4jes5ngCqzbDumeVBhZ5h1WR/wCJp/7j9g0K5hLI5znOe4uc4lznOJc5zjqSTmSis2I1fTSukEUUIPkxQRiONjeAA49pzXmQUIgQhCgEIQgsU1FNZBoQhA0JIVDBtny/NXuGY6RZk+Y0EmpH1ufaqJJBvzHAgFpBBFwQbghNaZh+JSQHxfGYdWHQ9Y5FbTQ18cwuw5jymnym/wD3NGMvUsc0LXtLXtDmnUFZEJtGrYngro7viu9mpGr2fMKoW/qpxPBWS3dHZkmp9B56+R61VhqqFkqIXRuLZGlrhwPLmOYWK6KCoppIEvThuHzVMrYaaN0sjsw1vAcXOJyaOs2Cv9k9iqivtI68FLfOZw8aQcom+d9bTttZdgwPBKehi6KljDAc3uPjSSO9J7uJ/AcLKTKta2R7n8NJuzVe7UVIsQLXghd7IPlO9o/YBqt1QhYhIQtD2w7osVNvQ0O7POLh0nlQQn7P6R3UMhxOVkGz7Q7Q02Hx9JUvsSD0cTbOllI4Nb/M2AXF9rdsanEXFrz0VODdlOwndy0c8+e78BwAVJX1stRI6WokdLK/ynvNyerqHIDILzFUJCEFAkIQoBCEIBCaSgsUJJrICaSEDQkhFNCSEQKcUjmODmEtcNCNQoIQbNhmONfZk1mv0D9GO7eR/BXK5+rTDMZfDZr7vj5ecwez8lWMw2xCxU1QyRodG4OB5cDyI4FZCgwVlJHM3dkFxwOjmnmDwWq4nhMkN3Dx4/TA0+sOHbotvurHCMGmqj4g3Y9HSOHijmAPOPV99kVzOlp5JXtjhY6SR5sxjAXOceoBdR2S7nDIt2bEg2WTVtMPGiYf3h/rD1eT9ZbbgWztLQh3e8Ya9/8ASSEXe/qv5rfZGStVNqQFshoMgOQ5JoQoEvJimJwUkTpqmRscbeJ1cfRaBm53UFQbXbcU9BeNlp6r1LT4sZ5yuGn1Rn2arjmN41UVsvS1Uhe7MNA8VkbT5rG+aPxPG6o2LbDb+et3oafep6U5EA2mmHtkaN9kfaStLKElQikmUlAkk0kAhCFFCEIQCEIUFghCFQIQhA0JJoBCElQ0kIRAkgpIM1LVvidvRuseI4OHIjitpwrFWzlrLbspyDNd8+xz7NVT7ObN1OIP3adniNIEkz7iKLjmeLvZGefLNdi2W2RpcOaCwdLUEWfUPA3zfUMHmN6hnzJQ08OCbKXtJV5cRCD/AN5H5D/RbY1gaA1oDWtFgAAAByA4J3QoBJNV+K4vFTDxzvPIu2NvlHrPIdalrRWNzLOlLXtFaxuXqqqiOJjpJXtjjYLve9wa1o5klcr2v7pL5d6DDS6KPR1SRuyyD92PMHX5X1VY4xiUlWSJrGPO0VrxgdYOp6ytLxbZwi76bMamInMfVPHsXlp1mO1tT2e7J6Ny0pyjv84/fLXnOvcnMm5JOZJ5qF03C1wciMiDkQeSjde1zgUkJKAQUJIoSQhQCEkIGhK6LqBoQkgsE0kXQNCV0XVU0KN0XQSSSukiJXSukrHA8Dqa6ToqWPeItvvPixxA8Xu4dmp4AoK8C9gMySAAMySdAF0HZPucPl3ZsR3oo8i2nBLZnj2z/Vjq8r6q27ZTYqmoLSH9vU+ucMozyib5vbr+S2hEYqWmjhY2OFjY42CzWMAa1o6gFlQhA0nOABJIAAJJJsABqSeCrcdx2moYulqpN0G+4weNJK7kxvHt0HGy43tbtrU4gSz+hpr5QNPl8jI7zj1aD8UV0ev23hkL4qCRsj23DpeA64wfKHtadq1yR7nEucS5zjckm5J5krmrJC0hzSWuBuCDYgrZsJ2jDrMqbNdoJdGn63Lt07FzuswZLTyidx8nY9HdThpHCY1Pz+f/AD/DYUIuhcx3NK3FcHiqBc+JJbKQDXqcOIWnYhQSQO3ZG2v5Lhm13Yf5aroV1inhbI0skaHNOoOYXqwdXbH2nvDw9V6Ppm96O1v3y5uUK9xfZ18d3wXkZmSzWRnZ6Q/H81QXXXx5a5I3WXz2bBfDbjeDSRdK6zajQldIoGkkhAIuki6gkhRuhBZJISRTQkhA0JXSVEkiV7cIwqorJRDTRmR+RNsmsb6T3aNHb9nJdb2S2Dgot2We1RVDMOI/ZQn9206n2jnysiNQ2S7ns1TuzVu9TwZER2tPMOw+Q3rOfVxXVsPoIaaNsNPG2KNujWiwvxJOpJ4k5lei6EQ0IXkxPEoKWJ01TI2KNvnO4n0WgZuPUM0HrWkbXd0KGl3oaPdqKgXBde8ELusjy3eyPtPBaftf3QJ6vehpd6npjkTe00w9ojyW+yPtJ0WlXQenEsQmqZHTVEjpZHauceHAAaAdQyXlJSJSugCUkJIq0wnG5KezT48XoE5t+qeHZotvoq6Odu/E644jRzTyI4LnayU1S+JwfG4tcOI4jkRxC8mfpK5O8dpdDpPSF8Pu271/fDo90rqmwjaBk1mS2jl0HoPPUeB6irhci+O1J1aH0OLLTLXlSdwd1T4vgUc93stHL6QHivPtD+f5q2ukSlMlqTusrlxUyV43jcOdVlJJC7clbunhxDhzB4hYLrotXTxytLJWhzevUHmDwK1HFsBkhu+O8kWvtsHtDiOsfgutg6ut+1u0vn+r9HXxe9TvX8qhCjdC9jmmldK6gXIJ7yjvLGXKBeojPvpLz76EF4hK6V0U0JXXpwzD5qqVsNNG6WR3mt4D0nE5NHWckHnuty2T2CnrN2Wo3qemOYJFpph7DT5I9o/YCtv2S7n0NLuzVe7UVAsQ214IXeyD5bvaP2Aard1Tbx4VhcFJEIaaNsbBmQMy53pOcc3HrK9qSEQ0LFU1DImOkle2ONg3nve4Na0cyTouWbX90l8m9BhpdHHo6pN2yvH7seYPaPjdiDb9rdt6bD7xttPVcIWmwjNtZXeb2anq1XHMcxyprZelqpN9wuGNHixxtPmsbwH4m2d1XOdcknMkkknMkk5kqN0ErpXSuldA7pXSuhAIuldK6B3USUXSKBFXmEbRPisye8kegdq9g/xD8fyVEksMmOuSNWhuw574bcqS6VBOyRofG4OadCNP90yVz6gxCSB29E61/Kac2O7R/NbdheMR1AsPEktnGTn2tPELkZ+ltj7x3h9F0npCmf3Z7W/fCyuldRuldeV71Pi2Aslu+G0cmpGjHnrA0PWFqlTA+NxZI0tcOB5cxzHWuhErzVtJHM3dkbccDo5p5g8F7cHV2p2t3hzOq9HUy+9TtP4aASsZKtcWwaSC7h48fpAZtHtDh26KpcupS9bxusvn8mK2O3G8aljcVAlTcsZWbWSEkIL+6iSldK6jJK63PBdv+8o+ipaCnjbkXHfkc+R3pPdq4/lwstJuldVHRT3WKr6LT+9Kf5qJ7q9X9Gpv74/4lz26V0HQf+a1b9Hpfum/Wke6tXcIKT3Zz/7Fz+6d0F3tHtRV4g4GoeAxubIYwWwtPpWJJJ6yT1WVLdRui6BoUbouiHdF1G6LoGkldIlFNIlK6V0DSSui6ARdK6V0Q0BxBBBIINwQbEHmEkkFzFtJUNaARG+3nOa7ePbYhT8J5vQi+5/6lRpXWj2fF/F6463PEa5yvPCeb0Ivuf8ANHhPL6uP+381RXST2bF/Ffbuo/mvDtNL6uP+181TVczXu3mxtjvq1l92/MA6LGVArKmKlO9YasvU5ckavbf2QcsZWRygVtaEEIQguyVElF1ElRk9eF0MlTPHTw26SZ26zeO629iczw0Xp2hwSagmEFTudI6Nso6Nxe3cc5zRnYZ3YV7+5w3exai6nzO+6nkKsO66++J29Gmgb+L3f4lUaZdO6hdF1Be7M7M1OJOlbSmEGEMc/pnvYLPLgLbrXX8kq/8A+VeJesovjT/5Ste4izPEH/8ASNH2dMf5hZPBDaA64rbsrK39Copx3KsS9bRfGqP8lV+0GwVZQ07qmeSmdGxzGlsUkznkucGiwdGBx5raPAvHjri7v4yu+S1bbfD8Qouihra6SpbOHPDO+KiRg3HDUPyvc5diIWz+xE+IRdLS1VG63lxuknbLE7k9vR5douDwKocVw2ekldBUxuikbwOjm8HNOjmnmFjw3EZqaVs9NI6KVmjm8jq0jQtNtDkus4Fi1LtDA6lrqctqIW7xkja7cYTl0kcmfRk+g7W3nWNg4+xpcQ1oLnOIa1rQXOc46AAZknktwPc5q2U/fNXPS0bAN5zaiSTeYOAdutI3j6IJPDXJbkMModnKc1bo5KqocejbLuWIc7RgObYW8zqevILmO0u0lTiMm/Uv8VpJihZcRQjTxRxdbVxzPZkgwUGFvnc8ROaWMNukcHNa7lYWvna9iO1e7wXl9ZH/AG/ksmzjrU1SRkRv5jUHo1Q9+y+tk+I/5rycst72is6iPo6PDp8eLHa9ZmbfXS58F5fWR/2/kvPXYBJDG6Rz2EMtcDeubkDiOtV3fkvrZPiP+ai+qkcLOkkcDqC9xB+wlZVpm3G7x9mu2TpZieOOd/1e3DcGlqGl7S1rb2BeT4x42sF6/Beb1kX3v/Ss1O8jDHFpLSCbFpII/bDiFQ9+zetl+I/5rCLZb2txtERE68Ntq9Pipj50mZtET515W/gxP6yL73/pXixHCJadoc/dc0m28wk2PI3AXl7+m9dL8R/zV5PIX4YHOJcbi5cSSf25Gqs2y0mvK0TEzrwVp0+Wt+FZiaxM+d+FfRYJLNGJGOjDXbwAcXA5Ejg08lm8Gqj0ofef+lWGERvkodyN248l+665Fjv31GawnCKz6UfizLVOe3K0c4jU/Jvr0eP1dJjHM7iJ7T8Xj8G6j0ovff8ApXkr8LlgAMgBaTbeabgHkcgrX/hVb9J/vZvks2LRvZQ7srt54LLuuXbx6TLM5nL8la57cqxyidyl+jpwvPCa6jfeY+ynpMGmlY2Rm5uuva7iDkSOXUsh2eqP3fvn5Kywpr30O7E7dfdwa65bY9JfUdSwmgr/AF4+K/8ASk578rRyiNT8SOkx8KTwtO4ie2nhOz9R+79//ReKuw6WCxkAscg5puL8lcmir/Xj4jv0qeKseKK0xDpAW3N73PSZfgVa57cqxyidz8GN+kxzS8xS1dRvvpqpUSpFRK9zkooTQiLQlK6CokqM239ylm9isJ9CKod/dlv+JbPttsJXV1dLUQOphG5sTWCSWRr/ABYwDcBhGt+K5jQV81O/pKeV8Uli3fjJa7dOov8AYrHwvxP6dU/FcqmmwjuVYl6yj+NN/lIf3LMQa0udLR2aC4/tZtAL+rWveFuJfT6n4z1jftRiLgQ6uqiCCCO+JLEHUaoOh9xhhNJXFps58rGtJysRESNPrLGNisetnix/jK79K5tQ4tUwNLaeonga47zmwzSRNLrWuQ0i5sAs52irz/8AurP4uo/Ug6H4C42dcXd/F1xWubbbK1tHDHUVtZ31eUQsDpJ5XNLmufkZNB4nBa6cervp1Z/F1H6lgqsSqJgGz1E8zQd4NlnllaHWI3gHEgHM59aDa9jdgJ67dnqN6npNQ4i0s7f3YOjfbOXIHUXmP7cU2Hxd44Exg3Lh1QBvxsdxLSb9K/2zcfW4c6lxWqe0sfVVL2OBa5j6iZ7XNOoILrELxojouyXdHLR3riw74p3gs6dzeke1p82Vv9Yzr17eEtre54NzvzBz08Dx0nQMd0hDD50DvPb7OvK+g5uvRBiE8bd2KeaNtyd2OaSNtzqbNNkVe7Mt3oaiK9nkuBB1bvM3bkdoP3LF4LP9c33D81QumcXF5e4vJJLy4lzidSTqSjvh/pv99y8s4ckXtal9b+j316nDOOtMmPfH66X3gs/1zfcd81567Z90Ub5DI1wYAbBpF8wOfWqnvh/pv993zUXTPIsXuI5FxIVrTNuN3/DG2XppidYu/wDdLZsIi6ehdE1wBLnAnXdO+HC4XmOyz/Wt9x3zVAx5bm0kHqJCn3zJ6x/vu+ax9TkrNppfW534Ze04bVrGTHuaxrzpd+C0nrWe65enEKboKAxOcCQW2IyuTNvWH2X+5a33zJ6x/vu+ahJK53lOc62m84ut96epyWmOV+0TvwsdTgpW3q8epmNed+WxYa8jD5S0kFvS2IJBGh1VF37N66X4j/msTZnAFoc4NN7tDiGntCgttMUVm0z8Z20Zeom9aRHbjGmx4XjAlb0NQ4tccmytcWE8gSND18fzrsapZ4nASPfJHfxHuc5wvyN9Cq1ZXVUhG66R5b6Je4t+66xjDxvuvj98M7dV6zFwyeY8T/qfmvcLkIoZS0kFnS2INiCACqb/AIlP66T33LC2d4aWte4Nde7Q4hpvkbhYirTDETaZ77ljk6mbVpFZmOMaeo4lP66T3isNRVySZSPc4DMBziRdYikVsilY8Q0TlvMam0/dAqJKkVErNrJCEILEpFBSRkSEJIh3TuopoGi6SFA7oukhA0XSQgEJIQF0roSQCV0IQCEIQCEIQCEkIBCEIBIppIEUimolBEqJUiolVCSRZCCzKiUIRUUIQgAhCEDQhCgQTQhAFCEIEUJIQCEIQIoQhAkIQgEIQgEkIQCEIQJBQhAikhCCBUUIVCQhCI//2Q=="/>
            <img style="width:70px;" src="https://insidepulse.com/wp-content/uploads/2019/02/Legion-of-Doom-logo-icon-Flashpoint-DC-Comics-5-e1549115087951.png"/>        
            <img style="width:70px;" src="https://cdn.playbuzz.com/cdn//7b1803f8-efcd-4031-81c0-90801cf58fbb/07cbc89f-7ab4-4978-8146-85daae5d1f30.jpg" />    
            <img style="width:70px;" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Old_Nestl%C3%A9_logo.svg/1200px-Old_Nestl%C3%A9_logo.svg.png" />
        </div>
     
    </div>
</asp:Content>

