pragma solidity ^0.8.0;
contract A{
uint a;
constructor (uint x) public {
   assembly {
      a := add(x, 32)
   }
}
}
