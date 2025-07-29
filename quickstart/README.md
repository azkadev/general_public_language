<div align="center">

# General Public Language


[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)
[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg?style=for-the-badge)](LICENSE)

</div>

---

## Status

belum bisa di pakai publik


# General Public Language

**General Public Language** sebuah library untuk kamu yang ingin menggunakan fitur **General Public Language** selain fitur kamu bisa menjalankan script dimanapun

- 🇮🇩 [Indonesia](https://github.com/azkadev/general_public_language/blob/main/README.md)
- 🇨🇿 [Afrika](https://github.com/azkadev/general_public_language/blob/main/README_AFRIKA.md)
- 🇨🇳 [China](https://github.com/azkadev/general_public_language/blob/main/README_CHINA.md)
- 🏴󠁧󠁢󠁥󠁮󠁧󠁿 [English](https://github.com/azkadev/general_public_language/blob/main/README_ENGLISH.md)
- 🇮🇳 [India](https://github.com/azkadev/general_public_language/blob/main/README_INDIA.md)
- 🇮🇩 [Jawa](https://github.com/azkadev/general_public_language/blob/main/README_JAWA.md)
- 🇯🇵 [Jepang](https://github.com/azkadev/general_public_language/blob/main/README_JEPANG.md)
- 🇰🇷 [Korea](https://github.com/azkadev/general_public_language/blob/main/README_KOREA.md)
- 🇷🇺 [Russia](https://github.com/azkadev/general_public_language/blob/main/README_RUSSIA.md)
- 🇮🇩 [Sunda](https://github.com/azkadev/general_public_language/blob/main/README_SUNDA.md)
- 🇹🇭 [Thailand](https://github.com/azkadev/general_public_language/blob/main/README_THAILAND.md)

## Status

belum bisa di pakai public, 

## Fakta

- Library ini tidak terikat banyak dependencies pihak 3

## Feature

- [x] **Sangat Cepat** Library Async (**Tidak Memblokir Threads**)
- [x] **Mudah Digunakan**

## Contoh

- [Contoh Sederhana](https://github.com/azkadev/general_public_language/tree/main/quickstart)

## Memasang

sebelum memasang pastikan kamu mengetahui basic dart / flutter setidaknya kamu sudah menginstall flutter / dart dalam komputer / device kamu. [Flutter Website](https://flutter.dev)

- **Dart / Hanya Cli Tidak ada gui**
  jika kamu ingin menggunakan tanpa gui
  ```bash
  dart pub add general_public_language
  ```

- **Flutter gui**
  pada dasarnya sama seperti dart

  ```bash
  flutter pub add general_public_language_flutter
  ```

## Dokumentasi


### Dasar

pastikan kamu membuat dasar ini dahulu ya, tidak harus sama

**contoh:**

```dart

import "package:general_public_language/general_public_language.dart";

void main() {
  print("start");
  final generalPublicLanguageGeneralDeveloper = GeneralPublicLanguageGeneralDeveloper();
}

```

### EnsureInitialized

method wajib di panggil bebas mau setelah **on** / sebelum method **on** tapi saya sarankan sebelum **on**

**contoh:**

```dart
  generalPublicLanguageGeneralDeveloper.ensureInitialized();
```


### Initialized

method ini wajib di panggil setelah method **on** karena untuk mengolah update

**contoh:**

```dart
  await generalPublicLanguageGeneralDeveloper.initialized();
```

### On

method on ini berguna untuk mendapatkan update data dari invoke / update

**contoh:**

```dart
  generalPublicLanguageGeneralDeveloper.on("update", (Map update) async {
    print(update);
  });
```

### Invoke

untuk memanggil api kamu perlu membaca dokumentasi langsung

- [Url Docs](other_url_docs) mudah di baca untuk umum 

disini saya hanya menyediakan parameters data map, map / json ini terdapat beberapa key penting


| Key            | Description                                                                                                    | Value      | Wajib Diisi                                              |
|----------------|----------------------------------------------------------------------------------------------------------------|------------|----------------------------------------------------------|
| **@type**      | ini isi dengan method dari                                                                                     | **String** | **ya**                                                   |
| **@client_id** | ini berisi client id dari method **createClient**                                                              | **int**    | **jika untuk method sync ada yang wajib ada yang tidak** |
| **@extra**     | isi dengan unique id karena method async tidak return data langsung jadi perlu extra sebagai kunci return data | **String** | **Tidak**                                                |


jika sudah mengisi parameters wajib, kita lanjut bagaimana menginvoke api

- **SetLogVerbosityLevel**
  di karenakan ini method log maka kamu menggunakan method sync 
  dan tidak wajib mengisi key **@client_id**

  contoh: 


```dart
  generalPublicLanguageGeneralDeveloper.invokeSync({
    "@type": "methodSync",
  });
```

- **SendMessage**
  untuk mengirim pesan menggunakan library ini pastikan client sudah login
  [Referensi Dokumentasi SendMessage](url docs)

```dart 
        await generalPublicLanguageGeneralDeveloper.invoke({
          "@type": "methodAsync", 
        });
```

di atas itu hanyalah contoh, untuk menggunakan method lain isi saja data parameters, pastikan parameters key wajib di isi sesuai table, maksud saya ada beberapa key yang wajib di isi, jika tidak ya akan mengirim data error



## Bantuan

**Sulit**? saya sudah membangun **library** ini **sebaik** mungkin dan **berusaha mudah** di baca dan **digunakan sebaik mungkin**. 

jika **kamu** masih **merasa** **kesulitan** dan **kebingungan** **cobalah bergabung** ke **group** kami secara **gratis tanpa biaya apapun**

- [Telegram](https://t.me/DEVELOPER_GLOBAL_PUBLIC)
- [Discord](https://discord.gg/h4qanyN7)

**sebelum join** pastikan **memakai profile** yang **jelas** kami tidak keberatan kamu siapa, dan pangkat apapun, tapi **pastikan** **ada username dan photo profile**, dan usahakan untuk **chat di group** **tidak chat pribadi** karena itu **group umum dan mungkin orang lain kebingungan**. jika **tidak mengikuti** ini kemungkinan **tidak bisa akses chat di group dan bakal di banned**, solusi pakai akun kedua, karena setelah di banned kami tidak bisa merespond cepat


## Support Me

Jika kamu merasa program ini berguna, kamu bisa support saya [GITHUB azkadev](https://github.com/azkadev) di link itu tersedia social media dan sponsor saya. saya tidak keberatan jika kamu hanya follow / donasi uang sedikit

![](https://github.com/azkadev/azkadev/blob/main/assets/gopay.png)

- https://www.patreon.com/c/azkadev
- https://opencollective.com/azkadev
- https://paypal.me/azkaaxeliongibran
- https://paypal.me/azkadev

Terimakasih


azkadev - 18-07-2025


## Tags

- general_public_language dart

</br>
</br>


<div align="center">

**Di buat dengan sebaik mungkin untuk Dart & Flutter Komunitas**

</div>
