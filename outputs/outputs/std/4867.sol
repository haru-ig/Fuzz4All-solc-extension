pragma solidity ^0.8.0;
contract Mutate {
    struct Test {
        mapping (uint => bool) values;
        mapping (uint => uint) sums;
        mapping (address => uint) balances;
    }
}
