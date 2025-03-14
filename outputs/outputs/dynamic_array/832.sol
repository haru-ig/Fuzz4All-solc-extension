pragma solidity ^0.8.0;
contract Example {
    function x() public pure returns (uint) {
        uint[] memory x = new uint[](1);
        uint memory y;
        uint memory z;
        assembly {
            x := 0
            y := x"110100000000000000000000000000000000000000000000000000000000000000" << 1
            y := x"7FFFFFFFFFFFFFFF" << 9 + 4
            z := x"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF" << 1265
            z := x "FFFFFFFF" << 1 + 9
        }
        return 1;
    }
}
