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
    x = x + _h;
    y = y + _i;
    a = msg.sender;
}
function printX () public view returns (uint256) {
    return x;
}
function printY () public view returns (address) {
    return a;
}
}


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
    x = x + 5;
    y = y + 6;
    a = msg.sender;
}
function printX () public view returns (uint256) {
    x *= 3;
    console.log(x);
    return x;
}
function printY () public view returns (address) {
    return a;
}
}
