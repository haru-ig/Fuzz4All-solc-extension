pragma solidity ^0.8.0;
contract EquivalentMutated {
    function x() public pure returns (uint) {
        uint x;
        assembly {
            x := mload(0x40)
        }
        x = 16579;
        return x;
    }
}
contract EquivalentSolidity {
    function x() public pure returns (uint) {
        uint x;
        x = 16579;
        return x;
    }
}
