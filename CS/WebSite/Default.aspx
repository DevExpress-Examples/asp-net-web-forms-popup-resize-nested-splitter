<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to resize ASPxSplitter placed inside ASPxPopupControl when resizing ASPxPopupControl
    </title>

    <script type="text/javascript">
        function OnClick(s, e) {
            ASPxPopupControl1.Show();
        }
        function OnAfterResizing() {
            splitter.AdjustControl();
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" Height="500px" Width="500px"
            ScrollBars="Auto" AllowResize="true" LoadContentViaCallback="OnFirstShow">
            <ClientSideEvents AfterResizing="OnAfterResizing" />
            <ContentCollection>
                <dx:PopupControlContentControl ID="PopupControlContentControl2" runat="server" SupportsDisabledAttribute="True">
                    <div style="height: 100%; width: 100%; overflow: hidden">
                        <dx:ASPxSplitter ID="ASPxSplitter2" runat="server" Width="100%" Height="100%" ClientInstanceName="splitter">
                            <Panes>
                                <dx:SplitterPane>
                                    <ContentCollection>
                                        <dx:SplitterContentControl ID="SplitterContentControl3" runat="server" SupportsDisabledAttribute="True">
                                        </dx:SplitterContentControl>
                                    </ContentCollection>
                                </dx:SplitterPane>
                                <dx:SplitterPane>
                                    <ContentCollection>
                                        <dx:SplitterContentControl ID="SplitterContentControl4" runat="server" SupportsDisabledAttribute="True">
                                        </dx:SplitterContentControl>
                                    </ContentCollection>
                                </dx:SplitterPane>
                            </Panes>
                        </dx:ASPxSplitter>
                    </div>
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
    </div>
    <dx:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" Text="Show PopUp">
        <ClientSideEvents Click="OnClick" />
    </dx:ASPxButton>
    </form>
</body>
</html>
