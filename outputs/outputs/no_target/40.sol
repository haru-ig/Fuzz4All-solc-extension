pragma solidity ^0.8.0;
contract Restricted {
event Log();
function transferFrom(address from,address to,uint256 value) external view returns(bool){
    revert();
}
}
