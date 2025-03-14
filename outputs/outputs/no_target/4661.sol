pragma solidity ^0.8.0;
contract A is C {
function f() private noMod returns (bool) {
C c;
return A::call(c, 1, 2) == true;
}
function A::call(C c) private view returns (bool) {
return c.f();
}
}
function _f() private {
A a;
return A::call(a, 1, 2) == true;
}
}
