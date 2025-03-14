pragma solidity ^0.8.0;
contract ArrayExample {
    struct Person {
        uint256 age;
        mapping (uint => mapping (uint => uint)) subarrays;
        mapping (uint => uint256) values;
    }
    uint256 maxLength = 18;
    mapping (uint => uint) indexes_address;
    mapping (uint => uint256) values;
    mapping (uint => mapping (uint => uint)) subarrays;
}
