pragma solidity ^0.8.0;
contract MutateTest {
    uint16 _param;
    uint256 _param2;
    uint256 _param3;

    function externalFunction(uint8 param, uint256 param2, bytes32 param3) public {
        bool boolParam;
        require(param > 5, "Param1 < 5");
        require(param > param2, "Param2 < Param1");
        require(param == param, "Param2 == Param1");
        require(param!= param, "Param2!= Param1");
        boolParam = boolParam;
        boolParam = false;
        uint8 uintParam = uintParam;
    }
    function internalFunction(uint256 internalParam) public returns (uint8) {
        bool boolParam;
        require(param > 5, "Param1 < 5");
        require(param > internalParam, "Param2 < Param1");
        require(param == param, "Param2 == Param1");
        require(param!= param, "Param2!= Param1");
        boolParam = boolParam;
        boolParam = false;
        return 0;
    }
}
