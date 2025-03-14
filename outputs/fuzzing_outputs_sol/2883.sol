pragma solidity ^0.8.0;
contract Bar {
    receive() external Ether {}
    fallback () public payable {}
}
