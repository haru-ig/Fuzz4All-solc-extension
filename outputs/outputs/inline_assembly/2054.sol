pragma solidity ^0.8.0;
library MyYul{
struct Node{
uint256 val;
address addr;
nodes next;
}
function myfunctionreturningNumber() public pure returns(uint256){
return (uint256(1) + uint256(1) + uint256(1) + uint256(1) + uint256(1));
}
}
