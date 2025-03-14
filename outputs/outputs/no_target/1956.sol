pragma solidity ^0.8.0;
contract PreservedSematic2 {
    mapping(address => uint) public x;
    function test(address a) public {
        x[a] = x[a] + 1;
    }
}
