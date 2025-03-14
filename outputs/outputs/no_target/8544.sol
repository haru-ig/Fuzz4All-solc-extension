pragma solidity ^0.8.0;
contract Equivalent3 {
    event Evt2(uint192 a);
    void set3(uint192 a) public payable {
        emit Evt2(a);
        emit Evt2(a+2);
        }
    }
