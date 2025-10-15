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

### ✅ Admin Foydalanuvchi

**Super Admin yaratildi va tayyor:**

```
👤 Username (Email): admin@admin.com
🔑 Password: admin
📋 Role: Super Admin
```

**Login:**
1. Webview'da `/site/login` ga o'ting
2. Username ga: `admin@admin.com` kiriting
3. Password ga: `admin` kiriting
4. Login tugmasini bosing

**Xavfsizlik:** Birinchi login'dan keyin parolni o'zgartiring!

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
