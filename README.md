# Pets to Home

Pets to Home es una startup en Chile que ofrece servicios de guardería para mascotas. Debido a su rápido crecimiento, se han visto imposibilitados de abrir locales físicos en la misma proporción, por lo que han decidido cambiar su modelo de negocio y crear una plataforma en la que cualquier persona pueda ofrecer su hogar para cuidar mascotas. Esta plataforma es fácil de usar y ofrece a los dueños de mascotas la posibilidad de encontrar un hogar seguro y amoroso para dejar a sus mascotas mientras están fuera, garantizando que sean tratadas con el mismo amor y cuidado que recibirían en casa.

## Desarrollo 📦

- Se inilializo el proyecto con rails new pets_to_home -d postgresql
- Se instala devise generando el modelo User y el controlador Pages
- Se crea el modelo de ciudades y se crea la seed de ciudades
- Se crea el scaffold de guarderias
- Se crea el modelo de mascotas y se crea la seed de mascotas
- Se crea la tabla intermedia entre guarderias y mascotas
- Se asigna el index de guarderias como root
- Se instala active storage para agregar imagen de portada a guarderia
- Se instala y configura kaminari
- Se instala ransack para filtrar por nombre de guarderia y ciudad
- Se agregan validaciones, optimizaciones de seguridad y estilos
- Se agregan archivos locales para idiomas
- Se prueba y se corrigen errores
- Se añaden mejoras de experiencia de usuario

### Pre-requisitos 📋

Dependencias para correr proyecto localmente:

[OS: Windows con WSL2, Linux o Mac](https://sickdata.gitbook.io/wsl/ubuntu-en-windows)
[Ruby 3.2.0](https://sickdata.gitbook.io/wsl/ruby)
[Rails 7.0.4](https://sickdata.gitbook.io/wsl/ruby-on-rails)
[Postgresql](https://sickdata.gitbook.io/wsl/postgresql)

## Cómo empezar 🚀

Instrucciones para correr proyecto localmente.

```bash
git clone https://github.com/nicobertin/pets_to_home.git
```

### Instalación 🔧

Para instalar las dependencias del proyecto, ejecutar:

```bash	
cd pets_to_home
```

```bash
bundle install
```

```bash
rails db:create
```

```bash
rails db:migrate
```

```bash
rails db:seed
```

## Hecho con 🛠️

* [Ruby](https://www.ruby-lang.org/en/) - Lenguaje de programación
* [Ruby on Rails](https://rubyonrails.org) - Framework web
* [RubyGems](https://rubygems.org) - Manejador de dependencias
* [Bootstrap](https://getbootstrap.com) - Framework CSS
* [Postgresql](https://www.postgresql.org) - Base de datos

### Gemas 📦

* [Devise](https://github.com/heartcombo/devise) - Autenticación
* [Kaminari](https://github.com/kaminari/kaminari) - Paginación
* [Ransack](https://github.com/activerecord-hackery/ransack) - Búsqueda

## Control de Versiones 📌

Sistema de control de versiones [Git](https://git-scm.com)

## Autor ✒️

* **Nicolas Bertín** - [nicobertin](https://github.com/nicobertin)

⌨️ Hecho con ❤️ por [Nicolas Bertin](https://github.com/nicobertin) 😊