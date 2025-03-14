pragma solidity ^0.8.0;
contract B {
uint8 a; constructor() public {a = 0x3;}
}
contract B_2 {
uint8 a; constructor() public {a = 0x3;}
function f(uint8 d) public {
if (a == 0x3)
    {
    assert (d == 0);
    assert (d == 0);
    }
}
}
contract C {
uint8 a; constructor() public {a = 0x3;}
function f(uint8 d) public {
if (a!= 0x3) {
    assert (d == 0);
} else {
}
}
}
contract D {
function f(uint8 c) public {
if (c == 0) return;
for (;c!= 0;){c = c << 4;}
uint8 d = 0;
for (d;d!= 5;){d = d << 4;}
if (c!= d) return;
uint8 e = 0;
for (;e == 0;) {
    e = e + 5;
}
uint8 f = 0;
for (;e!= 0;) {
    e = e * 9;
}
if (a == e) return;
}
}
