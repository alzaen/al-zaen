--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ahmed_al_zaen                   ▀▄ ▄▀ 
▀▄ ▄▀     BY ahmed_al_zaen (@ahmed_al_zaen)    ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY ahmed_al_zaen          ▀▄ ▄▀   
▀▄ ▄▀          help1  : مساعدة             ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

local function run(msg, matches)
if is_momod(msg) and matches[1]== "مساعدة2" then
return [[

🔒🔓💯 - اوامر الحماية
🚪-فتح🔓قفل🔒 الاضافه
⛔️-فتح🔓قفل🔒البوتات
🌐-فتح🔓قفل🔒 المجموعه
🚫-فتح🔓قفل🔒 الدردشه
📸-فتح🔓قفل🔒 الصور 
🎤-فتح🔓قفل🔒 الصوت
🎥-فتح🔓قفل🔒 الفيديو
🔄-فتح🔓قفل🔒 الروابط
🚦-فتح🔓قفل🔒 التكرار 
🖥-فتح🔓قفل🔒 الملصقات
🎴-فتح🔓قفل🔒 الصور المتحركه 
📂-فتح🔓قفل🔒 الفايلات 
📊-فتح🔓قفل🔒 الكلايش 
🚻-فتح🔓قفل🔒 الاضافه الجماعيه 
☑️-فتح🔓قفل🔒 العربيه   
↪️-فتح🔓قفل🔒 اعاده توجيه
👁-المراقبه نعم✔️ لا❌
🗄-ضع التكرار⚙ لوضع التكرار  بين 5 الى 20♻️
🗑- مسح الادمنيه < لحذف جميع الادمنيه
🗑-مسح الوصف : لحذف الوصف
🗑-مسح القوانين : لحذف القوانين
🗑-مسح المعرف : لحذف معرف المجموعة 
ارسل كلمة لمعرفة مطور البوت    🔶 dev 🔶
 🔸➖🔹➖🔸➖🔹➖
🔶DEV : @ahmed_al_zaen المطور البوت
🔶DEV : @al_zaenbot للمحضورين من هنا
🔶Group Link : @al_zaen1 اشترك بلقناه
]]
end

if not is_momod(msg) then
return "للمشرفين فقط 😎🖕🏿"
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"(مساعدة2)"
},
run = run 
}
end
