var $paragraphCollection : Collection

WP RESET ATTRIBUTES:C1344(wpDoc; wk column count:K81:199; wk column spacing:K81:249)
WP RESET ATTRIBUTES:C1344(wpDoc; wk column rule style:K81:250; wk column rule width:K81:252; wk column rule color:K81:251)

$paragraphCollection:=WP Get elements:C1550(wpDoc; wk type paragraph:K81:191)
If ($paragraphCollection.length>=3)
	WP RESET ATTRIBUTES:C1344($paragraphCollection[1]; wk background color:K81:20)
	WP RESET ATTRIBUTES:C1344($paragraphCollection[3]; wk padding:K81:15; wk border style:K81:29; wk border color:K81:34)
End if 






