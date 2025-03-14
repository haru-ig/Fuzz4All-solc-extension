pragma solidity ^0.8.0;
contract Improved : Equivalent {
uint256 z;
uint256 h;
address p;
constructor() public {
    z = 5;
    h = 6;
    p = msg.sender;
}
function mutate (uint256 _h, uint256 _i) public {
    z = z+1;
    h = h+1;
    p = msg.sender;
}
function printZ () public view returns (uint256) {
    return z;
}
function printH () public view returns (uint256) {
    return h;
}
}
