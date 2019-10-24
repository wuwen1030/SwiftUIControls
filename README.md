# SwiftUIControls

SwitUIControls is a collection of useful controls which are absent in SwiftUI standard library.

- [Checkbox](#Checkbox)

## Checkbox
### Usage

- Default style
```swift
struct CheckboxExample: View {
  @State var checked = false

  var body: some View {
    Checkbox(checked: $checked)
  }
}
```

- Custom style
```swift
struct CheckboxExample: View {
  @State var checked = false

  var body: some View {
    Checkbox(checked: $checked, images: CheckboxImage(checked: "checkbox_checked", unchecked: "checkbox_unchecked"))
  }
}
```

- Event
```swift
struct CheckboxExample: View {
  @State var checked = false

  var body: some View {
    Checkbox(checked: $checked, images: CheckboxImage(checked: "checkbox_checked", unchecked: "checkbox_unchecked")) {
      // checkbox value changed ...
    }
  }
}
```
