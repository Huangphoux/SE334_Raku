
#import "@preview/basic-report:0.3.1": *

#show: it => basic-report(
  doc-category: "Các phương pháp lập trình - SE334.Q21",
  doc-title: "Báo cáo chuyên sâu về ngôn ngữ lập trình Raku",
  author: "23521224 Trương Hoàng Phúc
23520175 Chang Chien Cheng",
  language: "vi",
  compact-mode: false,
  it,
)

#set page(margin: 1.75in)
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#show heading: set block(above: 1.4em, below: 1em)

= Tóm tắt ()
#include "0_tom-tat.typ"

= Phần giới thiệu (Cheng)
#include "1_gioi-thieu.typ"
Điểm khác biệt giữa Raku, Rakudo và Perl 6

= Nội dung phân tích chuyên sâu
== Đa mô hình lập trình (Cheng)
#include "2_da-mo-hinh.typ"

== Bản địa hoá và Quốc tế hoá (Phúc)
#include "3_l10n.typ"

== Biến (Phúc)
#include "4_bien.typ"

= Kết luận ()
#include "5_ket-luan.typ"

= Tài liệu tham khảo
#bibliography("bib.bib")
