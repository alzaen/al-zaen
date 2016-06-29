do

local function monster(msg, matches)
if is_sudo(msg) then 
        local text = "✋ انت المطور مالتي 👮 يعني احمد الزين دوله وعلم😻😹".."\n".."🆔•ايديك  : "..msg.from.id.."\n".."👮•اسمك: "..msg.from.first_name.."\n".."🔃•معرفك  : @"..msg.from.username.."\n".."💟•اسم المجموعه  "..msg.to.title 
        return reply_msg(msg.id, text, ok_cb, false)
     end
if is_momod(msg) then 
        local text = "انت ادمن  يعني دوله وعلم👿".."\n".." 🆔•ايديك  : "..msg.from.id.."\n".." 👮•اسمك : "..msg.from.first_name.."\n".." 🔃•معرفك : @"..msg.from.username.."\n".." 💟•اسم المجموعه "..msg.to.title
        return reply_msg(msg.id, text, ok_cb, false)
     end
if not is_momod(msg) then 
       local text = "انت عضو ولتبعبص 😑بوت".."\n".." 🆔•ايديك : "..msg.from.id.."\n".." 👮•اسمك : "..msg.from.first_name.."\n".." 🔃•معرفك : @"..msg.from.username.."\n".." 💟•اسم المجموعه "..msg.to.title
        return reply_msg(msg.id, text, ok_cb, false)
     end
if is_owner(msg) then 
        local text = "👿انت المشرف يعني صكارهم".."\n".." 🆔•ايديك : "..msg.from.id.."\n".." 👮•اسمك : "..msg.from.first_name.."\n".." 🔃•معرفك  : @"..msg.from.username.."\n".." 💟•اسم المجموعه "..msg.to.title
        return reply_msg(msg.id, text, ok_cb, false)
     end
     end

return {  
  patterns = {
       "^(منو اني)$",
  },
  run = monster,
}

end