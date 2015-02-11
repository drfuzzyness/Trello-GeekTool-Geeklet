Trello GeekTool Geeklet
=======================
An applescript to view your assigned cards from Trello.

## Changelog
### v0.1 - Feb 10th
![Version 0.1 Screenshot](http://i.imgur.com/nfY2gpC.png)
- Displays Card title, first card label, and due date in American format for *all* cards assigned to you
- Cards in whatever order Trello gives them

## Installation 
### Requirements
* [JSON Helper for Applescript](https://itunes.apple.com/us/app/json-helper-for-applescript/id453114608?mt=12) - Lets the script get information from Trello
### Get your Trello App Credentials:
* Download the [`GetTrelloCards.applescript`](https://github.com/drfuzzyness/Trello-GeekTool-Widget/raw/master/GetTrelloCards.applescript) and place it somewhere permanent. Preferably with your other GeekTool scripts.
* Open the `GetTrelloCards.applescript` and get ready to set `theAppKey` and `theUserToken`
* Get an application **Key** at [`https://trello.com/1/appKey/generate`](https://trello.com/1/appKey/generate) 
* Get a token at `https://trello.com/1/authorize?key=**YOURKEY**&name=**YOURAPP**&expiration=never&response_type=token&scope=read` - Note it is a never expiring token so be _very_ careful
* Edit the Applescript accordingly with your application key and token.
* Save it and record 

### Create your GeekTool Widget:
* Figure out the **address** to where you put your `GetTrelloCards.applescript`
* Protip: You can easily find it by dragging and dropping the file into a Terminal window
* Make a new GeekTool Shell Geeklet and set the Command to `osascript <addresstoyourapplescript>`
* Make the refresh rate something infrequent (Trello might get mad at you), perhaps `300` seconds

All set! Configure your fonts & colors to your liking.
