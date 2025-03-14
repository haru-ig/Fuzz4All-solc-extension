pragma solidity ^0.8.0;
contract Equivalent {
uint256 x;
uint256 y;
address a;
string aS;
uint256 _h;
uint256 _i;
constructor (string memory _s) public {
    x = _h; y = _i + 1;
    address memory _aS = "Ether";
    address memory _a = msg.sender;
    aS = _aS;
    a = _a;
}
function mutate(uint256 _h, uint256 _i) public {
    x = _h + 1;
    y = _i + 1;
    a = msg.sender;
}
function printX() public view returns (uint256) {
    return x;
}
function printY() public view returns (address) {
    return a;
}
}
