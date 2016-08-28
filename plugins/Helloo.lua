do 
function run(msg, matches) 
local reply_id = msg['id'] 
if is_sudo(msg) then 
      local info = '😳 هلا والله احمد الزين🙀 نورت استاذي 😻️' 
 reply_msg(reply_id, info, ok_cb, false) 
elseif is_admin1(msg) then 
    local info = 'هلاوات عيني الادمن 😹🙌😻' 
 reply_msg(reply_id, info, ok_cb, false) 
elseif is_owner(msg) then 
    local info = '👮هلاوات عيني المدير الكروب نورت❤️✋ ' 
 reply_msg(reply_id, info, ok_cb, false) 
elseif is_momod(msg) then 
    local info =  '👮🏻 هلا وغلا الادمن نورت/ي كلبي 👫'
 reply_msg(reply_id, info, ok_cb, false) 
 else 
      local info = '🤓 هلا وغلا كلبي 😳العضو/ه نورت/ي😻'
      reply_msg(reply_id, info, ok_cb, false) 
 end 
end 
return { 
    patterns ={ 
    "^(هلو)$" 
}, 
run = run 
} 
end
