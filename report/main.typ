
#import "@preview/basic-report:0.3.1": *

#show: it => basic-report(
  doc-category: "Các phương pháp lập trình - SE334.Q21",
  doc-title: "Báo cáo chuyên sâu về ngôn ngữ lập trình Raku",
  author: "23521224 Trương Hoàng Phúc
23520535 Nguyễn Văn Hoàng",
  language: "vi",
  compact-mode: false,
  it,
)

#set page(margin: 1.75in)
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#show heading: set block(above: 1.4em, below: 1em)
#show raw: set text(font: "JetBrains Mono")

= Phần giới thiệu (Phúc)
#include "1_gioi-thieu.typ"

= Nội dung phân tích chuyên sâu
== Đa mô hình lập trình (Hoàng)
#include "2_da-mo-hinh.typ"

== Bản địa hoá và Quốc tế hoá (Phúc)
#include "3_l10n.typ"

== Biến (Phúc)
#include "4_bien.typ"

== Vòng lặp và câu điều kiện (Phúc)
#include "6_lap_dieu-kien.typ"

== Nhập xuất dữ liệu (Phúc)
#include "7_nhap-xuat.typ"

== Hàm (Phúc)
#include "8_ham.typ"

== Lập trình bằng hàm (Phúc)
#include "9_lap-trinh-ham.typ"

== Lập trình hướng đối tượng (Phúc)
#include "10_oop.typ"

= Kết luận (Hoàng)
#include "5_ket-luan.typ"

= Tài liệu tham khảo
#bibliography("bib.bib")
