pragma solidity ^0.8.0;
contract MutatedString {
    address public addr;
    mapping (uint => uint) public mapping1;
    bytes public b;
    uint public x;
    mapping (address => mapping (uint => uint)) public mapping2;
    bytes32 constant public bhash = keccak256('hello');
    uint constant public buint = uint(bhash);
    mapping (address => mapping (uint => mapping (uint => uint))) public mapping3;
    address constant public ba = 0x1111;
    mapping (uint => uint) public mapping1024;
    uint256 constant public xuint256 = uint256(x);
}
