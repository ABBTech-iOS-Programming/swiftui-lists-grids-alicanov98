# 📚 SwiftUI Homework — Books App

Figma dizaynındakı **Home**, **Vendors** və **Authors** ekranlarını SwiftUI istifadə edərək hazırlayın.

🎨 [Figma dizaynına bax](https://www.figma.com/design/5iQcBaZTAS6xBK5b3K62gX/Books-app?node-id=0-1&p=f&t=hwOsMkrgTWErXBU8-0)

## 🛠 Texniki tələblər

- Dizaynı Figma nümunəsinə mümkün qədər uyğun hazırlayın.
- Məlumatları modellər şəklində saxlayın və modelləri `Identifiable` protokoluna uyğunlaşdırın.
- Collection-ları göstərmək üçün `ForEach` istifadə edin.
- Uyğun hissələrdə `ScrollView`, `List`, `LazyVStack`, `LazyHStack`, `Grid` və `LazyVGrid` istifadə edin.
- Layout və vizual görünüş üçün ehtiyac olan hissələrdə `Spacer`, `.background`, `.overlay` və `.offset` tətbiq edin.
- Təkrar istifadə oluna bilən custom view-lar yaradın və məlumatları parent view-dan child view-a ötürün.
- Şəkilləri `Assets.xcassets` daxilində saxlayın.
- Kod strukturunu səliqəli qurun və bütün kodu bir faylda yazmayın.

## 🌿 Git tələbləri

- Tapşırıq üçün ayrıca branch yaradın. Məsələn: `feature/books-app`.
- Dəyişiklikləri mərhələli şəkildə və aydın mesajlarla commit edin.
- Branch-i GitHub-a push edin.
- Hazır olduqdan sonra `main` branch-ə Pull Request açın.

### 💬 Commit nümunələri

```text
add book and author models
implement home screen
add vendors and authors sections
```

## 📱 Part 2 — Navigation & State Management

Mövcud layihəyə Figma dizaynındakı **Book Detail** və **Author Detail** ekranlarını əlavə edin.

### 🛠 Texniki tələblər

- Navigation üçün `NavigationStack`, `NavigationLink(value:)` və `navigationDestination` istifadə edin.
- Home ekranında kitab seçildikdə uyğun `Book` modelini **Book Detail** ekranına ötürün.
- Authors ekranında müəllif seçildikdə uyğun `Author` modelini **Author Detail** ekranına ötürün.
- Author Detail ekranında müəllifin kitablarını `LazyVGrid` və `ForEach` ilə göstərin.
- Müəllifin kitablarından biri seçildikdə **Book Detail** ekranına keçid edin.
- Book Detail ekranında favorite vəziyyətini `@State` ilə idarə edin.
- `+` və `−` düymələri ilə kitab sayını dəyişdirin. Say `0`-dan aşağı düşməməlidir.
- Ümumi qiyməti kitabın qiymətinə və seçilmiş saya əsasən hesablayın.
- Sayı idarə edən hissəni ayrıca custom view kimi yaradın və dəyəri `@Binding` vasitəsilə ötürün.
- `Continue shopping` düyməsinə toxunduqda əvvəlki ekrana geri qayıdın.
- Dizaynı Figma nümunəsinə mümkün qədər uyğun hazırlayın.

### 🌿 Git tələbləri

- Part 2 üçün ayrıca branch yaradın. Məsələn: `feature/navigation-and-details`.
- Dəyişiklikləri mərhələli və aydın commit mesajları ilə commit edin.
- Hazır olduqdan sonra `main` branch-ə Pull Request açın.

## ✅ Təqdim etməzdən əvvəl

Project-in build olduğuna və xəta olmadan işlədiyinə əmin olun.
