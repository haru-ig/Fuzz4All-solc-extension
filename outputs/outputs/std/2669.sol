pragma solidity ^0.8.0;
contract Mut{
   uint[] memory a;
   function mutationfunc() public {
      a.append(1);
   }
 }

















/* In the following code, `x1` is declared as a uint256 type and initialized to 0, `x2` is declared as a uint256 type and initialized to a value (100). Then `x2` is used as a parameter for the function `mul(uint256 x2)`. Then the function `add(uint256 x1,uint256 x2)` is used as a parameter for `add(uint256 x1,uint256 x2)`. When `x1` is passed to the function `add(uint256 x1,uint256 x2)`, it can cause a possible overflow or underflow because `x1` can have the value 249 and `
