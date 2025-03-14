pragma solidity ^0.8.0;
contract Mutated15{
    function mutated15(uint[4] memory a) public pure returns (uint) {
        uint result = a[0];
        uint temp = 15;
        a[1] = temp + result;
        a[2] = a[1] + temp;
        result = a[2] + a[1];
        temp = a[1];
        a[3] = result + temp;
        a[0] = temp;
        return a[0];
    }
}
