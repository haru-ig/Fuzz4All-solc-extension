pragma solidity ^0.8.0;
library SimpleY9{
function myfunctionreturningNumber() public pure returns(uint256){
(uint256 x, uint256 y) = SimpleY9.myfunctionreturningNumber();
return x + y;
}
}
