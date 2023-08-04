var1 := "Fullllllllllllllllllllllllllllllllllll"
var2 := "Donde esta la biblioteca?"
var3 := "jajajajajajajaja ese"
var4 := "Para bailar La Bamba"
var5 := "Yo no soy marinero, soy capitan, Soy capitan"
var6 := "Guantanamera, Guajira Guantanamera"
var7 := "Despacito, Quiero desnudarte a besos despacito"

nums := "1`n2`n3`n4`n5`n6`n7"
sort, nums, random
stringsplit, array, nums, `n
count := 1

f10::
 {
   x := array%count%
   send, % var%x% "{Enter}"
   if(count = 7)
    {
	sort, nums, random
	stringsplit, array, nums, `n
      count := 0
    }
   count++
 }
return