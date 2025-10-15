# SmartSchool Platform - Replit Setup

## Loyiha haqida
Bu **Smart School** maktab boshqaruv tizimi (School Management System) - CodeIgniter PHP frameworkda yozilgan.

## Hozirgi holat

### ✅ Ishlayotgan narsalar:
- **PHP 8.2** server ishga tushdi (port 5000)
- **Railway MySQL** database ulandi
- PHP 8.2 uyg'unlik muammolari tuzatildi (AllowDynamicProperties)
- Base URL Replit muhiti uchun sozlandi

### Database Sozlamalari

Database Railway MySQL orqali ulangan:
- **Host:** metro.proxy.rlwy.net
- **Port:** 45813
- **Database:** railway
- **User:** root

Parol va boshqa ma'lumotlar Replit Secrets'da xavfsiz saqlanmoqda.

### ⚠️ Database Import Kerak

SmartSchool loyihasi bo'sh database bilan ishlamaydi. Asosiy jadvallar import qilish kerak:

**Kerakli jadvallar:**
- sch_settings
- sessions
- languages
- currencies
- staff
- users
- students
- classes
- va boshqalar...

### Database Import Qilish

**Variant 1: Railway'dan eski database'ni export qiling**
```bash
mysqldump -h metro.proxy.rlwy.net -P 45813 -u root -p railway > smartschool_backup.sql
```

**Variant 2: SmartSchool SQL faylini import qiling**

Agar sizda `smartschool.sql` yoki `database.sql` fayl bor bo'lsa:

1. Faylni Replit'ga yuklang
2. Terminal'da quyidagi buyruqni bajaring:
```bash
mysql -h metro.proxy.rlwy.net -P 45813 -u root -p$MYSQL_PASSWORD railway < smartschool.sql
```

**Variant 3: phpMyAdmin orqali**
Railway'da MySQL servisini oching va "Connect" tab'dan phpMyAdmin URL ni oling, keyin Import qiling.

## PHP 8.2 Uyg'unligi

Eski CodeIgniter framework PHP 8.2 bilan mos kelmagan. Quyidagi fayllar tuzatildi:

- `system/core/Model.php` - #[\AllowDynamicProperties]
- `system/core/Controller.php` - #[\AllowDynamicProperties]
- `system/core/Loader.php` - #[\AllowDynamicProperties]
- `system/core/Router.php` - #[\AllowDynamicProperties]
- `system/core/URI.php` - #[\AllowDynamicProperties]
- `system/database/DB_driver.php` - #[\AllowDynamicProperties]

## Environment O'zgaruvchilari

Replit Secrets'da saqlanmoqda:
- `MYSQL_HOST`
- `MYSQL_PORT`
- `MYSQL_USER`
- `MYSQL_PASSWORD`
- `MYSQL_DATABASE`

## Deployment

Server port 5000'da ishlamoqda. Replit webview orqali ko'rish mumkin.

## Keyingi Qadamlar

1. **Database Import:** Yuqoridagi usullardan birini ishlatib database'ni import qiling
2. **Admin Login:** Database importdan keyin `/admin` ga kiring
3. **Sozlamalar:** Tizim sozlamalarini tekshiring va kerak bo'lsa yangilang

## Qo'llab-quvvatlash

Database schema Smart School tijorat loyihasi bilan birga keladi. Agar yo'qolgan bo'lsa, sotuvchiga murojaat qiling: https://smart-school.in/

## Texnik Ma'lumotlar

- **Framework:** CodeIgniter 3.x
- **PHP Version:** 8.2.23
- **Database:** MySQL (Railway)
- **Server:** PHP Built-in Development Server
- **Port:** 5000
