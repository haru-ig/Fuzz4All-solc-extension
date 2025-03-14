pragma solidity ^0.8.0;
contract Equivalent {
address pub a;
address pub b;
uint256 public x;
uint256 public y;
function mutate (address _r) public {
    a = _r;
    b = address(_r)+1;
    x = x+1;
    y = y+1;
}
function printA() public view returns (address) {
    return a;
}
function printB() public view returns (address) {
    return b;
}
}
