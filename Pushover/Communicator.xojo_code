#tag Class
Protected Class Communicator
Inherits Xojo.Net.HTTPSocket
	#tag Method, Flags = &h0
		Function SendNotification(msg As Text, device As Text = "", title As Text = "", url As Text = "", urlTitle As Text = "", priority As Integer = 0, timestamp As Integer = 0, soundName As Text = "") As Boolean
		  ' Full Pushover API Details: https://pushover.net/api
		  
		  ' Build parameter text
		  Dim paramText As Text = "token=" + kAppToken + "&user=" + kUserKey
		  
		  If msg <> "" Then
		    paramText = paramText + "&message=" + EncodeURLComponent(msg).ToText
		  Else
		    Return False
		  End If 
		  
		  ' your user's device name to send the message directly to that device, 
		  ' rather than all of the user's devices (multiple devices may be separated by a comma)
		  If device <> "" Then
		    paramText = paramText + "&device=" + device
		  End If
		  
		  ' your message's title, otherwise your app's name is used
		  If title <> "" Then
		    paramText = paramText + "&title=" + title
		  End If
		  
		  ' a supplementary URL to show with your message
		  If url <> "" Then
		    paramText = paramText + "&url=" + url
		    ' a title for your supplementary URL, otherwise just the URL is shown
		    If urlTitle <> "" Then
		      paramText = paramText + "&url_title=" + urlTitle
		    End If
		  End If
		  
		  ' send as -2 to generate no notification/alert, -1 to always send as a quiet notification,
		  ' 1 to display as high-priority and bypass the user's quiet hours, 
		  ' or 2 to also require confirmation from the user
		  If priority <> 0 Then
		    paramText = paramText + "&priority=" + priority.ToText
		  End If
		  
		  ' a Unix timestamp (Date.SecondsFrom1970) of your message's date and time to 
		  ' display to the user, rather than the time your message is received by our API
		  If timestamp <> 0 Then
		    paramText = paramText + "&timestamp=" + timestamp.ToText
		  End If
		  
		  ' the name of one of the sounds supported by device clients to override
		  ' the user's default sound choice
		  If soundName <> "" Then
		    paramText = paramText + "&sound=" + soundName
		  End If
		  
		  ' Convert to parameter text to MemoryBlock
		  Dim postData As Xojo.Core.MemoryBlock
		  postData = Xojo.Core.TextEncoding.UTF8.ConvertTextToData(paramText)
		  
		  ' POST it
		  Self.SetRequestContent(postData, "application/x-www-form-urlencoded")
		  Self.Send("POST", "https://api.pushover.net/1/messages.json")
		  
		  Return True
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ValidateCertificates"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
