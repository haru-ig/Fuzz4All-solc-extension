pragma solidity ^0.8.0;
interface MixedContactsExample502Interface {
    function someOperation() external returns (uint56);

    function returnStruct() public returns (uint56 a, uint56 b, uint56 c, uint56 d, uint56 e, uint56 y);

    function return_value0() public returns (uint56 value);

    function return_value2() public view returns (uint56 value0);

    function return_value3() public view returns (uint56 value1);

    function return_value4() public view returns (uint56 value2);

    function return_value5() public view returns (uint56 value3);

    function return_value6() public view returns (uint56 value4);

    function return_value000() public returns (uint16 value000){
        return 2;
    }

    function return_value100() public returns (uint16 value100){
        return 100;
    }

    function return_value001() public view returns (uint16 value001){
        return 1;
    }

    function return_value200() public view returns (uint16 value200){
        return 0;
    }

    function return_value0
