pragma solidity ^0.8.0;
library TestLib {
    uint256 constant constantValue;
    uint256 constant constantValue;
    uint256 constant constantValue;
    uint256 constant constantValue;
    uint256 constant constantValue;
    uint256 constant constantValue;
    uint256 constant constantValue;
    uint256 constant constantValue;
    uint256 constant constantValue;
    uint256 constant constantValue;
    uint256 constant constantValue;
    uint256 constant constantValue;
    uint256 constant constantValue;
    uint256 constant constantValue;
    uint256 constant constantValue;
    uint256 constant constantValue;
    uint256 constant constantValue;
    uint256 constant constantValue;
    function f() public pure returns (uint256) {
        uint256 temp = constantValue;
        constantValue = temp;
        uint256 val = a();
        temp = constantValue;
        constantValue = temp;
        if(temp<3){
            constantValue = val;
        } else {
            val = b();
        }
        return val;
    }
    function g() public pure returns (uint256) {
        uint256 temp = constantValue;
        constantValue = temp;
        uint256 val = a();
        temp = constantValue;
        constantValue = temp;
        if(val==0){
            constantValue = val;
        } else {
            constantValue = val;
        }
        return val;
    }
    function h() public pure returns (uint256) {
        uint256 temp = constantValue;
        constantValue = temp;
        uint256 val = a();
        temp = constantValue;
        constantValue = temp;
        uint256 arrayVal = 0;
        constantValue = val;
        for(uint256 i=0;i<=100000/val;i++){
            uint256 arrayTemp = arrayVal+i;
            arrayVal = arrayTemp;
            temp = constantValue;
            constantValue = val+arrayVal+i;
            temp = constantValue;
            constantValue = val+arrayVal+i;
        }
        return val+arrayVal+i;
    }
    function i() public pure returns (uint256) {
        uint256 temp = constantValue;
        constantValue = temp;
        uint256 val = a();
        temp = constantValue;
        constantValue = temp;
        uint256 x = constantValue+val;
        constantValue = x;
        val = constantValue;
        temp = constantValue+val;
        constantValue = temp;
        temp = constantValue;
        constantValue = val;
        uint256 y =
