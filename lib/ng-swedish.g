;;  -*- mode: lisp; tab-width: 1 -*-
;;  Generates place names in Swedish.
;;  Created and maintained by Erik Sigra (sigra@home.se).

(namer
	swedish-place-names
	(grammar
		root
		100
		(root
			(reject
				name
				�� �� �kra�kra �lv�lv
				bergberg borgborg by
				daldal
				f�ltf�lt forsfors
				hemhem
				hemhus
				heml�sa ;  Means "homeless" (plural)
				hemstad ;  Means "homecity"
				h�gh�g
				h�ghus  ;  Means "highouse"
				hushem
				hush�g  ;  Means "pile of houses"
				hultshult hushus
				karlekarle kullakulla
				laxlax leklek
				markmark markamarka
				sandsand sj�sj� sl�ttsl�tt smj�l stensten
				str�mstr�m str�mstr�m sundsund
				vivi vikvik
				rrr ;Norrryd
				ttt ;Sl�tttuna
				)
			)    
		(name (or 16 mainpart 1 (preword " " (capitalize mainpart))))
		(mainpart (or 8 (prefix suffix) (prefix middle suffix) 2 (complete)))
		(prefix
			(or

				;;  Color
				svart bl� gr�n gul r�d brun vit
     
				;;  Age
				ny gammel

				;;  Preposition
	
				;;  Capitalized because automatic capitalization
				;;  doesn't work for this letter.
				�ver

				neder
		
				;;  Size
				stor lill
		
				;;  Direction
				nord nordan norr
				�st �stan �ster
				s�der syd sydan v�st
				v�stan v�ster vest ;;  Vestfj�rd

				;;  Personal firstname
				adolfs bengts everts fredriks karls oskars tyres
		
				;;  Other
				� �kers alings �lv ar �s
				b� back berg bj�r bj�rne bjurs bjus bor borg brahe
				br�m brunns
				dal djurs
				eke em en
				f�gel f�lt fin finn fogd fors fr� furu
				g�r g�te glimminge gran	gr�nges	gryt
				halls halm han helsing hem h�g horn hults hus
				j�n
				karle ki klags kol kors krono kulla kvarn kyrk
				lapp lax lek lem lin ling lule lums lycke
				malm m�r marie mark marka mj�l morgon m�ln m�rt munk
				myckel
				n�ck n�den
				ockel �d om on �re ox oxel
				p� pite
				r�fs r�g r�tt ronne ro r�nn run
				s�g salt sand sibb side sig simris sj� skattung sl�tt
				sol sollefte sollen st�ll sten str�m stock sund sve
				svine
				t�ll tammer tand t�v tran troll
				udde ule ulvs ume unn upp
				v�m var v�r vet vikar vin ving vir
				ytter

				)
			)
		(suffix
			(or
				� �ker �kra �lv �s
				b�ck b�cka backe baden berg berga bj�rka borg bo b�le
				bro bruk by byn
				dal dala dalen
				f�lt fj�rd fors fred
				g�rd g�rden g�rde g�rdet g�rda g�va ;  Morgong�va
				haga hamn haninge h�ttan hed heden hem h�g hult hus
				hyttan
				kalix k�ping kulla kulle kvarn kvarna kyrka
				landa lax l�sa lycke
				mark marka mo myra
				n�s n�set
				�
				ryd
				sala sand s�tra sj� sk�r sl�tt slott sta stad sten
				stig str�m sund
				tj�rn torp tr�sk tuna vattnet
				valla vi vik
				)
			)
		(middle
			(or ;  Fyll p�!
				� �kra
				by
				fors
				karle
				lek lycke
				mj�l
				n�s
				sj� str�m
				)
			)
		(complete
			(or
				alfta �lvho �nge artsj�
		  b�cka bjus bjuv bomarsund borl�nge
		  dals-ed d�sjebro
		  falun floda f�gl�
		  gagnef glimminge gustavs
		  habo hamra haninge hede h��r huddinge
		  idre
		  jakobstad j�rna
		  kalix kalmar k�vlinge k�kar kvidinge
		  lima los lund
		  malung mora m�rkret motala
		  nacka nora
		  ore orsa
		  s�len s�rna skan�r sk�vde solv sval�v sveg
		  tierp tuna
		  vasa v�xj� vendel
				)
			)
		(preword
			(or

				;;  Color
				svarta bl�a gr�na gula r�da bruna vita
		 
				;;  Age
				16 nya 16 gamla
		 
				;;  Preposition
				16 �vre 16 nedre

				;;  Size
				16 stora 16 lilla
		 
				;;  Direction
				16 norra 16 �stra 16 s�dra 16 v�stra
				)
			)
  )
	)
