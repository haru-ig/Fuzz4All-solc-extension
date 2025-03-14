pragma solidity ^0.8.0;
contract C is D {
constructor(address b0, address b1) public {
e = b0;
}
constructor(address b0, address b1, uint i) public C(b0, b1) a{
b = i;
}
}

pragma solidity ^0.8.0;
contract M {
mapping(uint => uint) public a;
uint i = 0;
constructor(uint i) public {
a[0] = i; }
}

contract A is M {
function f() public {
}
}
contract B is A {
function f() public {
a[0] = 5;}
}
contract MyContract {
uint a;
function MyContract(uint _a) public {
a = _a;
}
uint f(A a, uint v) public {
a.a[0] = v + 1;
return a.a[0];
}
}
contract C is D {
uint[256] a;
C() public {
a.push(4 / 3);
a.swap(0, 1);
a[10] = 5;
f(this, 6);
a[40] = 13;
a[(151657829 - 932140093) / 4] = 11;
}
}
contract D {
uint[256] a;
D() public {
a.push(4 / 3);
a.swap(0, 1);
a[10] = 5;
f(this, 6);
a[40] = 13;
a[(151657829 - 932140093) / 4] = 11;
}
}
