pragma solidity ^0.8.0;
contract Minter {
uint mint;
function mint() public view returns(uint) {
mint = (mint + 1) - mint / 2;
return mint;
}
}
