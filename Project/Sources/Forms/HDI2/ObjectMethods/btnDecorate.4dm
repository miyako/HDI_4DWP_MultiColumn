var $bodySource; $rangeSource : Object
var $paragraphCollection : Collection

// set bottom margin to whole document
$bodySource:=WP Get body:C1516(wpDoc)
$rangeSource:=WP Text range:C1341($bodySource; wk start text:K81:165; wk end text:K81:164)
WP SET ATTRIBUTES:C1342($rangeSource; wk margin bottom:K81:14; "24pt")



// retrieve the list of paragraph
$paragraphCollection:=WP Get elements:C1550(wpDoc; wk type paragraph:K81:191)

// set decorate to $paragraphCollection[1]
WP SET ATTRIBUTES:C1342($paragraphCollection[1]; wk background color:K81:20; "Lavender")

// set decorate to $paragraphCollection[3]
WP SET ATTRIBUTES:C1342($paragraphCollection[3]; wk padding:K81:15; "12pt")
WP SET ATTRIBUTES:C1342($paragraphCollection[3]; wk border style:K81:29; wk solid:K81:115)
WP SET ATTRIBUTES:C1342($paragraphCollection[3]; wk border color:K81:34; "DarkOrchid")



