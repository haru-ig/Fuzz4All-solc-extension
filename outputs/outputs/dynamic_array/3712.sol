pragma solidity ^0.8.0;
contract D {
    uint256[10] array;
    uint256[256] memory s;

    function test() public {
        array[3] = 3;
        s[0] = 4;
    }
}
