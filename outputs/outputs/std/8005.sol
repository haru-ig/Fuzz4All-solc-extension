pragma solidity ^0.8.0;
contract Array16_modified_solidiarity{
    uint128[] public num1;
    uint128[] public num2;
    uint128[] public num3;
    modifier Mutate_array_7(uint128[] memory num1,uint128[] memory num2,uint128[] memory num3){
        num3; num2; num1.num123;
        num1.num123 = num3;
        num2.num123 = num1;
        num3.num123 = num2;
        _;
        num1.num123 = num3;
        num2.num123 = num1;
        num3.num123 = num2;
    }
}
