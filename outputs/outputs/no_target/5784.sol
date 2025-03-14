pragma solidity ^0.8.0;
contract Bar {
 uint256 a;
 uint256 b;
 uint256 c;
 uint256 d;
 uint256 p;
 uint256 q;
 uint256 r;
 uint256 s;
uint256 x;
function f(uint256 z) {
uint256 w = z + z + z + z - 1;
a = 0;
b = w;
c = 42;
d = 2;
p = z + z + z + z - 1;
q = p;
r = w + w + w + w - 1;
b = w;
s = 0;
x = 0;
if (w >= 2**256) {
w = w >> 256;
s = w << 256;
m(1000000000000000);
s = w+s;
s = s << 256;
s = w+s;
s = s << 256;
s = w+s;
a = 1;
}
else {
m(55555555);
m(100000000);
m(55555555);
m(100000000);
a = 0;
b = z + z + z + z - 1;
m(1000000000000000);
s = 0;
x = 0;
if (w >= 2**256) {
w = w >> 256;
s = w << 256;
x = w + s;
}
else {
    m(55555555);
    m(100000000);
    m(55555555);
    m(100000000);
    b = w + s;
    m(1000000000000000);
    s = w + s;
    m(1000000000000000);
    s = w + s;
    m(1000000000000000);
    x = w + s;
}
x = x << 256;
x = x + s;
x = x << 256;
}
x = p + x;
x = y + x;
x = q + x;
x = r + x
