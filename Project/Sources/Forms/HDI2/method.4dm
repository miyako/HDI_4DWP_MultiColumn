Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		initHDI
		OBJECT Get pointer:C1124(Object named:K67:5; "varTxt")->:=TextTabControl{TabControl}
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		OBJECT Get pointer:C1124(Object named:K67:5; "varTxt")->:=TextTabControl{TabControl}
		
		Case of 
				
			: (FORM Get current page:C276=1)  //info
				OBJECT SET VISIBLE:C603(*; "WriteProArea"; False:C215)
				
			: (FORM Get current page:C276=2)
				OBJECT SET VISIBLE:C603(*; "WriteProArea"; True:C214)
				
				// Load existing document
				wpDoc:=WP Import document:C1318(Get 4D folder:C485(Current resources folder:K5:16)+"myDoc.4wp")
				GOTO OBJECT:C206(*; "WriteProArea")  // set focus to 4D Write Pro area
				
			: (FORM Get current page:C276=3)
				OBJECT SET VISIBLE:C603(*; "WriteProArea"; True:C214)
				
				// Create new document with Lorem ipsum
				wpDoc:=WP New:C1317
				
				$loremSum:="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eget vehicula lorem. Fusce vehicula dictum nunc ut pulvinar. Sed ornare risus ligula, sit amet ullamcorper nisi tempor a. Donec elementum sapien quis auctor rhoncus.Cras eget facilisis odio."+" Proin sagittis feugiat pellentesque. Nunc sed finibus erat.\n"\
					+"Nulla magna ex, suscipit nec pretium quis, tempus in nisi. Ut sagittis varius placerat. Donec ultricies libero et lectus accumsan, eu ultrices risus pellentesque. Suspendisse vestibulum turpis auctor lobortis malesuada. Quisque imperdiet cursus porta."+" Nunc in metus condimentum, accumsan felis a, ornare nunc. Morbi eleifend lacus neque, eu ultricies massa tincidunt sed. Pellentesque sagittis tellus quis neque suscipit posuere. Morbi tincidunt vel quam ut elementum. Nunc at quam ut tortor aliquet he"+"ndrerit. Sed vitae sem hendrerit, ultricies massa sed, accumsan est. Sed feugiat, justo a dapibus dignissim, dui elit suscipit nunc, ut congue leo el. Mauris scelerisque dictum risus nec euismod.Proin at elem entum lorem. Nam ac risus vitae nulla phar"+"etra molestie.\n"\
					+"Duis fringilla risus quis volutpat semper. Curabitur ullamcorper molestie tortor at molestie. Sed nec risus ligula. Donec congue ante at dolor tempus posuere. Integer dictum ex et dignissim maximus. Duis ante purus, eleifend bibendum iaculis sed, vari"+"us quis nisi. Aenean ullamcorper ultrices lorem vitae sollicitudin. Aliquam maximus porttitor ipsum vitae consequat. In eu ipsum cursus felis semper aliquam varius vitae libero. Nullam scelerisque eu metus ut consequat. Donec dapibus in augue quis gra"+"vida.Ut dolor enim, molestie vitae tortor sit amet, vulputate rhoncus enim. Aliquam et facilisis turpis, vitae luctus tortor. Aliquam dignissim in libero sed faucibus. Vestibulum sed diam metus. Phasellus condimentum mi orci, vitae tincidunt magna pha"+"retra ac.\n"\
					+"Praesent et tortor augue. Aenean vulputate mattis elementum.Nam facilisis et erat dapibus ultricies. Suspendisse egestas mauris magna, ut ultricies ipsum pulvinar vel. Praesent id volutpat lorem, a tempor est.Suspendisse tristique sapien sapien, vitae"+" malesuada augue vehicula in. Sed tempus enim a bibendum rhoncus. Morbi semper ipsum et gravida lobortis. Pellentesque sed sem tempor nulla laoreet pretium vel quis eros.Donec hendrerit ex at enim aliquet consectetur. Pellentesque quis libero placerat"+" ipsum pharetra maximus.\n"\
					+"Morbi tempus malesuada convallis. Nam vel erat ipsum.Vestibulum ultricies venenatis suscipit. Curabitur et mattis sem.Ut suscipit ut arcu in egestas. Aliquam erat volutpat.Mauris faucibus nisi vel est rutrum condimentum. Cras in orci nibh. Aliquam sed"+" ex a ex rhoncus sollicitudin et quis lectus. Curabitur convallis lacus lorem, in pretium dui ullamcorper eu. Ut vitae nisi placerat, commodo est vel, maximus tellus.\n"\
					+"Vestibulum hendrerit, ipsum sit amet placerat imperdiet, ligula quam aliquet lac. Cras quam ex, vulputate quis scelerisque sit amet, interdum vel metus. Praesent eu dolor volutpat, consequat lectus vel, maximus tellus. Suspendisse tempor tellus tincid"+"unt felis dapibus, et convallis nisi convallis. Phasellus libero dolor, tempor et dapibus id, aliquet luctus enim. Morbi quis pharetra elit, id sagittis nisi. Fusce in ex ipsum. Mauris est nisl, rhoncus quis tincidunt sed, elementum vehicula nibh. Don"+"ec imperdiet ipsum ut dolor facilisis, et ultrices tortor commodo. Sed ex quam, commodo in erat vitae, vulputate viverra augue. Duis eget convallis tortor.\n"\
					+"Curabitur ut ultricies felis. Nam eu pulvinar eros. Quisque ullamcorper sapien in est facilisis egestas sed vel tellus. Nulla elementum fringilla lobortis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lectus libero, convallis ac od"+"io a, euismod ultricies velit. Donec eget gravida est, id tristique quam. Curabitur sed lacinia odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos. Nullam id ultricies erat, eu tincidunt nulla.\n"\
					+"Morbi id vestibulum risus. Phasellus cursus magna nec leo eleifend dapibus. Nunc maximus ipsum quis sem elementum, vitae pellentesque urna volutpat. Suspendisse potenti. In ut tristique nibh, id congue nisl. Mauris sem metus, congue sit amet libero cu"+"rsus, consectetur gravida lectus. Proin mollis, magna vulputate pulvinar egestas, ante felis commodo tortor, a cur. Sed at luctus diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vestibulum, est vel efficitur convallis, felis f"+"elis aliquet risus, si. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia; Suspendisse at ullamcorper lectus. Nullam a finibus lectus. Cras gravida malesuada nulla, viverra dictum lectus. Vestibulum at lacus sit amet ex "+"vestibulum hendrerit.\n"\
					+"Etiam aliquet, mi in lobortis semper, mauris est lobortis nibh, eu pretium nisi. Vestibulum et enim sit amet arcu tristique sollicitudin eget vitae mauris. Phasellus finibus massa nunc. Cras egestas fringilla felis eu blandit. Maecenas ultrices risus "+"dui, id interdum velit mattis eu. Ut feugiat dolor libero, vel sagittis tortor commodo sit amet. Ut consectetur massa in libero molestie laoreet. Fusce commodo purus massa, a maximus lorem volutpat sed. Cras tempor, lectus convallis pretium pharetra, "+"leo augue porttitor risus, vel f.\n"\
					+"Sed finibus libero eget lacus hendrerit gravida. Suspendisse imperdiet augue sit amet nunc lobortis, eget finibus urna hendrerit. Donec fringilla mauris et ante tincidunt consectetur. Morbi ac mauris nibh. Proin sem justo, fermentum a risus eget, aliq"+"uam consequat nisl. Praesent a bibendum justo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt, lacus sed rutrum vestibulum, nisi nisi lacinia turpis, et tincidunt neque dolor a nibh."
				ST SET TEXT:C1115(wpDoc; $loremSum)  //insert text
				WP SET ATTRIBUTES:C1342(wpDoc; wk text align:K81:49; wk justify:K81:100)
				
				
				
		End case 
		
End case 