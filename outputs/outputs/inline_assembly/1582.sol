pragma solidity ^0.8.0;
contract Equivalent {
uint256 x;
uint256 y;
address a;
constructor() public {
    x = 3;
    y = 4;
    a = msg.sender;
}
function mutate (uint256 _h, uint256 _i) public {
    x = x+1;
    y = y+1;
    a = msg.sender;
}
function printX () public view returns (uint256) {
    return x;
}
function printY () public view returns (address) {
    return a;
}
}
