do 

local function run(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

     return "للتحدث مع المطور اضغط على المعرف التالي \n @ahmed_al_zaen \n  @al_zaen1 اشترك بالقناه 👾 "
     
  end 
   
end 

-- #DEV @ahmed_al_zaen 

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = run, 
} 

end 
-- By @ahmed_al_zaen  
