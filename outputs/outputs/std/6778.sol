pragma solidity ^0.8.0;
contract MultiplyingNumbers {
    int constant A = 42;
    uint128 constant B = 7;
    function multiplyWithReturn(int i) public pure returns (int) {
        return A * i;
    }
    function multiplyNoReturn(int i) public {
        A * i;
    }
}
contract MultiplyingNumbers2 {
    uint constant A = 42;
    uint constant B = 7;
    function multiplyNoReturn(int i) public {
        A * B * i;
    }
}
