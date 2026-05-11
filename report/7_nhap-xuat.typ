`say` và `print` in dữ liệu ra màn hình. `print` không xuống dòng ở cuối câu.

```perl
say 'Hello Mam.'; # Hello Mam.\n
print 'Hello Sir.'; # Hello Sir.
```

Yêu cầu người dùng nhập dữ liệu bằng từ khoá `get`.

```perl
my $name;

say "Hi, what's your name?"; $name = get;

say "Dear $name welcome to Raku";
```

Sử dụng `prompt` giống `input()` của Python để vừa in ra màn hình chỉ dẫn vừa yêu cầu người dùng nhập vào dữ liệu.

```perl
my $name = prompt "Hi, what's your name? ";

say "Dear $name welcome to Raku";
```

