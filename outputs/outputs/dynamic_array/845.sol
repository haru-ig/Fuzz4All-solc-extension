pragma solidity ^0.8.0;
contract EquivalentSemanticallyMutated {
    function x() public pure returns (uint) {
        uint x;
        uint mload_x;
        assembly {
            mload_x := mload(0x40)
        }
        x = 16579;
        return x;
    }
}
