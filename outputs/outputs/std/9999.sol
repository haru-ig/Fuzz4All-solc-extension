pragma solidity ^0.8.0;
contract ArrayMutation {
    struct Person {
        uint age;
        mapping (uint => mapping (uint => uint)) subarrays;
        mapping (uint => uint256) values;
    }
    uint256 maxLength = 18;
    mapping (uint => bool) indexes_bool;
    mapping (uint => uint256) values;
    mapping (uint => mapping (uint => uint)) subarrays;
}
