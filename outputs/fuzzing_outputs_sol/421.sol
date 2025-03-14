pragma solidity ^0.8.0;
contract SimpleCaller {
    receive() external constructor() { require(address(this).balance >= 1 ether); }
    fallback() external payable {}
}
