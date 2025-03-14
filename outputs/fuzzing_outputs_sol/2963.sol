pragma solidity ^0.8.0;
contract MutatedCaller3 {
    uint256 counter = 0;
    mapping(uint256 => uint) internal data;
    fallback() external payable {
        selfdestruct(address(this));
    }
}
