pragma solidity ^0.8.0;
contract D {
constructor(uint256 _x) public {
x = _x;
}
uint256 public x;
}

pragma solidity 0.8.0;
contract F {
constructor(uint256 i) public {
x = i;
}
uint256 public x;
}
contract G {
function g() public {
F f1;
F f2 = f1;
x = f2.x;
}
uint256 public x;
}

pragma solidity 0.8.0;
contract H {
constructor() public {
f();
x = 0;
}
function f() public pure {
f.callvalue(address(this).balance);
}
uint8 public x = 42;
function () public view {
bytes memory b = new uint8[](42);
for (uint i = 0; i < b.length; i++) {
b[i] = 0x0;
}
}
}<fim_middle>uint256 public x;
}
