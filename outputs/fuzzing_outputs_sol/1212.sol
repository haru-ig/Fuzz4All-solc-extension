pragma solidity ^0.8.0;
contract SemanticsEquivalence9Mutated {
    uint[] memory numbers;
    function run() public {
        uint _i = 0;
        uint i = count100000;
        uint i1 = count100000;
        uint i2 = count100000;
        if (i == i1) numbers[i++] = 13;
        if (i == i1) numbers[i++] = 24;
        if (i == i2) numbers[i++] = 16;
        if (i == i2) numbers[i++] = 25;
    }

}
