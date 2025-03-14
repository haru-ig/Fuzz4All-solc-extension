pragma solidity ^0.8.0;
contract Equivalent {
    function x() public pure returns (uint) {
        uint x;
        assembly {
            x := mload(0x40)
        }
        return x;
    }
}
