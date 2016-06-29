do 
function run(msg, matches) 
local reply_id = msg['id'] 
if is_sudo(msg) then 
      local info = '🙋 هلاوات تاج راسي المطور احمد الزين❤️😻️' 
 reply_msg(reply_id, info, ok_cb, false) 
elseif is_admin1(msg) then 
    local info = 'هلاوات عيني الادمن 😹🙌😻' 
 reply_msg(reply_id, info, ok_cb, false) 
elseif is_owner(msg) then 
    local info = '👮هلاوات عيني المدير الكروب نورت❤️✋ ' 
 reply_msg(reply_id, info, ok_cb, false) 
elseif is_momod(msg) then 
    local info = 'هلاوات عيني الادبن❤️🖖' 
 reply_msg(reply_id, info, ok_cb, false) 
 else 
      local info = '😳هلاوات عيني العضو/ه المحترم/ه 💋نورت/ي الكروب😻' 
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