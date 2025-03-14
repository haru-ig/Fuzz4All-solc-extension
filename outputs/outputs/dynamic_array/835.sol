pragma solidity ^0.8.0;
contract Example {
    function x() public pure returns (uint) {
        uint x;
        assembly {
            x := 0x00
        }
        return x;
    }
}
