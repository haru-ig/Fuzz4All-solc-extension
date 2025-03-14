pragma solidity ^0.8.0;
contract Array2 {
    bytes4 constant _constructor = 0x10100001;

    constructor() {
        assembly {
            mstore(memory.slot, mload(0))
        }
    }

    function getArrayPointer(address x) public pure returns (uint256) {
        assembly {
            x := mload(x)
            mload(x)
        }
    }
}
