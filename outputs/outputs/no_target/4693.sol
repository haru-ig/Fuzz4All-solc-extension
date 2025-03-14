pragma solidity ^0.8.0;
contract D {
constructor(address a) public {
b = a;
}
address public c;
address public b;
}

pragma solidity >=0.4.16 <0.8.0;
contract D {
constructor(uint x) public {
if (x <= 2000000000) {
 x_ = x;
} else {
  x_ = (uint256(1) << 80) + x;
 }
}
uint public x_;
}
contract Test {
function add_test() public {
D d1 = new D(address(0));
D d2 = new D(address(0));
d1 = d1; d2 = d2;
assert(d1.e == 0);
assert(d2.e == 0);
if (x_ > 2000000000) {
assert(x_ == 12607915687167277120);
}
}
uint public x_;
}
