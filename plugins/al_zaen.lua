do 

local function run(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

     return "للتحدث مع المطور اضغط على المعرف التالي \n @ahmed_al_zaen \n   او يمكنك النضمام الى الكروب عبر الرابط https://telegram.me/joinchat/Ch4a3D3K0AE0WpZz3wQXNA  "
     
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
