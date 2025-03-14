pragma solidity ^0.8.0;
contract C23{
        function c() public payable{
                C13 c;
                assembly{
                c := mload(0x40)
                calldatacopy(0x40, 0x01, calldatasize())
                let x := mload(0x41)
                mstore(0x40, 0x00)
                mstore(0x41, x)
                return(x)
                }
        }
}
