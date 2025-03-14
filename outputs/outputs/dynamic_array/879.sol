pragma solidity ^0.8.0;
contract ArrayTest2 {
    function x() public pure returns (uint[5]) {
        uint[5] memory y;
        uint z=(uint)y[0];
        return y;
    }
}
