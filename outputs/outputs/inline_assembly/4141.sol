pragma solidity ^0.8.0;
contract Mutators2 {
    function test () public returns (uint256){
        assembly {
            mstore(0x50, 1)
            mstore(0x50, 2)
            mstore(0x50, 3)
            mstore(0x50, 4)
            return(mload(0x50))
        }
    }
    function test_2 () public returns (uint256){
        assembly {
            mstore(2, 2)
            return(mload(2))
        }
    }
}
