pragma solidity ^0.8.0;
contract Fighter {
address payable dead;
uint256 h;
constructor(uint256 g) public {
    h=g;
}
function start() public {
    dead.send(1 ether);
}
}
