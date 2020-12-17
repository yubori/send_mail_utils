#!/usr/bin/perl
$from='who@univ.ac.jp';
#$cc='Cc: ipsj-ubi-k@ht.sfc.keio.ac.jp'."\n"; # \nは必須
$bcc='Bcc: ipsj-ubi-k@@ht.sfc.keio.ac.jp'."\n"; # \nは必須
$name=$ARGV[0];
$to=$ARGV[1];
$type=$ARGV[2];
$from_name="送信者名"

$subject=`echo -n "受賞のお知らせ" | base64`;
chomp $subject;

# 省略しているため適切に構築してください
$body="".
"$name"."様\n"
."\n"
."$typeの受賞をお知らせします。\n"
."\n"
."$from_name";

$body=`echo -n "$body" | base64`;
chomp $body;

print "From: $from\n"
."To: $to\n"
."$cc"
."$bcc"
."Subject: =?UTF-8?B?$subject?=\n"
.'Content-Type: text/plain; charset="UTF-8"'."\n"
."Content-Transfer-Encoding: base64\n"
."\n"
."$body\n"
