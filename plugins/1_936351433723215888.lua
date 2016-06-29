do 
function run(msg, matches) 
local reply_id = msg['id'] 
if is_sudo(msg) then 
      local info = 'بخدمتك استادي🙊😂️' 
 reply_msg(reply_id, info, ok_cb, false) 
elseif is_admin1(msg) then 
    local info = 'خليني محترمك لخاطر رتبتك يل اثول😂😂' 
 reply_msg(reply_id, info, ok_cb, false) 
elseif is_owner(msg) then 
    local info = 'انته انجب' 
 reply_msg(reply_id, info, ok_cb, false) 
elseif is_momod(msg) then 
    local info = 'ليش متاكل تبن وتخليني محترمك️🖖' 
 reply_msg(reply_id, info, ok_cb, false) 
 else 
      local info = 'انته انجب يا ادب سزز يا حيوان مو صوجك صوج الي رباك 😒🙌' 
      reply_msg(reply_id, info, ok_cb, false) 
 end 
end 
return { 
    patterns ={ 
    "^(انجب)$" 
}, 
run = run 
} 
end 
