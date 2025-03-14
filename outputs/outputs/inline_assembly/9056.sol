pragma solidity ^0.8.0;
library Lib
{
    constructor ()
        {
        assembly {

            mstore(0x12, 5)

            let v := mload(0x12)

            mstore(0x12, add(v, 12))

            let x := mload(0x12)
      }
    }
    function add(uint a, uint b) internal pure returns (uint) {
        return a + b;
    }
}
