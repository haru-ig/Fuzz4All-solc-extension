pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract myClass {
    uint public constant i = 10;
    function multiply() immutable returns (uint) {
        uint temp = 10 * i;
        uint temp1 = 2 * 2;
        uint temp2 = i + 1;
    }
    function a() external pure returns (uint) {
        return 42 + 5;
    }
}
