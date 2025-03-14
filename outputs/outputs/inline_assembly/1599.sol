pragma solidity ^0.8.0;
contract Revo {
uint256 x;
uint256 y;
address a;
constructor() public {
    a = msg.sender;
    x = 3;
    y = 4;
}
function revert() public {
    revert(1);
}
}
