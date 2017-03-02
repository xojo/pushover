#tag Module
Protected Module Pushover
	#tag Note, Name = Setup
		
		1. Create account at www.pushover.net
		2. Make a note of your user key
		3. Grab the Pushover Xojo library
		4. Add it to an app that you want to be able to send notifications
		5. Register the app within your pushover account
		
		
	#tag EndNote


	#tag Constant, Name = kAppToken, Type = Text, Dynamic = False, Default = \"a2dx4i4sn31wvhw8cj64eneh7i4pw2", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kUserKey, Type = Text, Dynamic = False, Default = \"um4wtbvhg8mibcdu551pr9t4nbj9x9", Scope = Private
	#tag EndConstant


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
	#tag EndViewBehavior
End Module
#tag EndModule
