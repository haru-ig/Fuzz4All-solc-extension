pragma solidity ^0.8.0;
contract newY {
    uint public constant x = 2147483647;
    uint public constant y = 0xffffffffffffffff;
    function f() internal returns (uint) {
        return x / 2;
    }
    function func() private {
        uint256 z;
        while (x!= 0xffffffffffffffff) {
            x--;
            z = x * y;
            if (x == 0) {
                revert();
            }
        }
    }
}
