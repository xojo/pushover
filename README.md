# Pushover
A Xojo library for communicating with the Pushover notification service.

Pushover API: https://pushover.net/api

## Usage ##
Copy the Pushover module to your project.

In your app, drag Pushover.Communicator onto your layout.

Set the Pushover.kUserKey and Pushover.kAppToken constants to your Pushover user key and App Token for the app you created on the Pushover control panel.

Call the Communicator.SendNotification method to send a notification. Any errors are returned in the PageReceived event as JSON.