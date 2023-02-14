#!/usr/bin/perl -w
$str1="ABC";
print "Hi, $str1\n";
    
$num1 = 10;
$num2 = 20;
$sum12 = $num1 + $num2;
print " $num1 + $num2 = $sum12\n";

$str_bi = "\a";
print "Bi~$str_bi\n";
=pod
\a => sound
\d => number
\D => non-number
\e => escape
\f => next page
\n => next line
\s => blank
\S => non-blank
\t => tab
\w => letter: A-Z, a-z, _, numbers 
\W => non-letter
=cut

$str_num1 = 123;
$str_num2 = 456;
print "$str_num1 + $str_num2 = $str_num1+$str_num2\n";
print "$str_num1 . $str_num2 = $str_num1.$str_num2\n";