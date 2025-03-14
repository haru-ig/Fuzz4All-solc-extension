pragma solidity ^0.8.0;
contract BugsAbiCoder{
    function f1() external{
        uint[] test = [1, 2, 3];
        test[44];
        test;
    }
}
