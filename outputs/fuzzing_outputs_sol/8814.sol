pragma solidity ^0.8.0;
contract TestCaller2 {
    uint public constant value = 4;
    receive(){
        uint _ = value;
    }
}
