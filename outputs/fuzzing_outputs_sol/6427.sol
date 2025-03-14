pragma solidity ^0.8.0;
contract C {
    uint public x;
    mapping (bytes32 => uint) map;

    receive() external payable {
        x++;
    }
}
