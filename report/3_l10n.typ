Raku hỗ trợ việc đặt tên biến bằng bất kì ngôn ngữ nhờ việc hỗ trợ bộ mã Unicode. Và vì nhờ việc hỗ trợ Unicode mà các từ khoá của cú pháp Raku có thể được dịch sang bất kì ngôn ngữ. Code sử dụng từ khoá được dịch vẫn có thể được thực thi như bình thường.


```perl
biến $số = hỏi "nhập số: ";
nói "Bạn đã nhập số {$số}.";

nếu $số <= 10 {
    nói "Số này bé hơn hoặc bằng 10.";
} hoặc {
    nói "Số này lớn hơn 10.";
}
```