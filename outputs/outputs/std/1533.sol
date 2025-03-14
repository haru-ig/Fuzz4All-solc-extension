pragma solidity ^0.8.0;
contract MutatedMutatedMutatedMutated {


    modifier TestFunc(uint8 newTest)
    {
        test = newTest;
        _;
    }

    function myInit()
        TestFunc(test)
    {
    }
}
