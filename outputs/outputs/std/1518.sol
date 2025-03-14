pragma solidity ^0.8.0;
contract CompiledMutatedMutatedMutated {

    uint8 private _uint8Var;

    function myInit(uint8 test) public {
        _uint8Var = test;
    }

    function getMyUInt8Var() public constant returns (uint8) {
        return _uint8Var;
    }

    function setMyUInt8Var(uint8 test) public {
        _uint8Var = test;
    }
}
