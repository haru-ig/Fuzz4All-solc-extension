pragma solidity ^0.8.0;
contract MutatedSematic {
    mapping(uint => uint[]) x;
    function f() public {
        x[9][1];
    }
}
