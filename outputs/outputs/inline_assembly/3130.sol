pragma solidity ^0.8.0;
contract C {
    mapping(bytes32 => mapping(uint => mapping(address => uint))) public balances;
}
