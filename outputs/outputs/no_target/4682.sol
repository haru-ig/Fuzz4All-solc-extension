pragma solidity ^0.8.0;
contract C {
constructor(uint256 i) public {
x = i;
}
uint256 public x;
modifier M() {
x = x + 1 ;
return _;

require(x > 0);
}
}

pragma solidity ^0.8.0;
contract C {
uint256 x;

 modifier M(uint256 i) public {
   return x >= i;
}
}
