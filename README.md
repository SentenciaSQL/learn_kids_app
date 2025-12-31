# Learn Kids App (Flutter) / Learn Kids App (Flutter)

A kids learning mobile app built with **Flutter** that helps children explore **Alphabet, Numbers, Animals, Foods, Professions**, and **Sign Language** with **images** and **Text-to-Speech** (TTS).  
Una app móvil educativa para niños hecha con **Flutter** para aprender **Alfabeto, Números, Animales, Comidas, Profesiones** y **Lenguaje de señas**, con **imágenes** y **Texto a voz** (TTS).

---

## ✨ Features / Funcionalidades

**EN**

- Browse learning categories: Alphabet, Numbers, Animals, Foods, Professions, Sign Language
- **Offline assets** (images shipped with the app)
- **Text-to-Speech** pronunciation via `flutter_tts`
- **English & Spanish** localization
- Light/Dark theme support (dynamic theme)
- Simple navigation with named routes

**ES**

- Explora categorías: Alfabeto, Números, Animales, Comidas, Profesiones, Lenguaje de señas
- **Recursos offline** (imágenes incluidas en la app)
- **Pronunciación por TTS** con `flutter_tts`
- Localización **Inglés y Español**
- Soporte de tema Claro/Oscuro (dynamic theme)
- Navegación simple con rutas nombradas

---

## 🧰 Tech Stack / Tecnologías

- **Flutter** + **Dart**
- State management: **BLoC** (`bloc`, `flutter_bloc`)
- Localization: `flutter_localizations` + custom localization delegate
- Persistence: `shared_preferences`
- Text-to-Speech: `flutter_tts`
- Theming: `dynamic_theme`
- Assets: local PNG resources under `assets/`

> Project pubspec: `name: learn_kids_app`, `version: 1.0.1+2`  
> SDK constraint: `>=2.7.0 <3.0.0` (older Dart constraint)

---

## 📁 Project Structure / Estructura del proyecto

```txt
lib/
  main.dart
  src/
    pages/        # UI screens (home, alphabet, animals, numbers, foods, professions, sign language, settings)
    widgets/      # Reusable UI widgets
    routes/       # Named routes
    languages/    # i18n dictionaries (EN/ES)
    delegates/    # Localization delegate
    preferences/  # Local user preferences (theme, locale, etc.)
    utils/        # Helpers (Text-To-Speech, etc.)
    models/       # Data models
    classes/      # Language helpers
assets/
  alphabet/ animals/ food/ numbers/ professions/ signLanguage/ menu/
```

---

## ✅ Requirements / Requisitos

**EN**

- Flutter SDK installed
- Android Studio / VS Code (recommended)
- Android emulator/device or iOS simulator/device (macOS required for iOS)

**ES**

- Flutter SDK instalado
- Android Studio / VS Code (recomendado)
- Emulador/dispositivo Android o simulador/dispositivo iOS (para iOS necesitas macOS)

---

## ▶️ Run Locally / Ejecutar localmente

```bash
flutter pub get
flutter run
```

### Build / Compilar

**Android**

```bash
flutter build apk
# or
flutter build appbundle
```

**iOS (macOS)**

```bash
flutter build ios
```

---

## 🌍 Localization / Idiomas

- Supported locales: **en**, **es**
- Dictionaries live under:
  - `lib/src/languages/language_en.dart`
  - `lib/src/languages/language_es.dart`

---

## 🔊 Text-to-Speech (TTS)

TTS is implemented using `flutter_tts` (see `lib/src/utils/utils.dart`).  
La pronunciación (TTS) se implementa con `flutter_tts` (ver `lib/src/utils/utils.dart`).

> Note: If a device doesn’t have the selected language voice installed, the app may show a “language not found” alert.

---

## 🖼 Assets

All learning images are bundled in the app under `assets/`:

- `assets/alphabet/`, `assets/animals/`, `assets/food/`, `assets/numbers/`, `assets/professions/`, `assets/signLanguage/`, `assets/menu/`

---

## 📸 Screenshots (Optional) / Capturas (Opcional)

Add screenshots to improve the repo presentation:

```md
![Home](docs/screenshots/home.png)
![Alphabet](docs/screenshots/alphabet.png)
```

---

## 🧪 Tests

No automated tests found in this project.  
Si deseas, puedo ayudarte a agregar pruebas unitarias/widget básicas.

---

## 📄 License / Licencia

Add your license here (MIT / Apache-2.0 / proprietary).  
Agrega tu licencia aquí (MIT / Apache-2.0 / propietaria).

---

## 👤 Author / Autor

**Andrés Frías Guzmán**  
GitHub: https://github.com/SentenciaSQL
