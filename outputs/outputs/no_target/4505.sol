pragma solidity ^0.8.0;
contract C {
    function myFunction() public pure returns (bool v) {
        unchecked{
            assembly {
                let tmp := 1.4
                tmp := mload(0x40)
                tmp := mload(0x40)
                mstore(0x40, mload(0x40))
                mstore(0x40, mload(0x40))
                mstore(0x40, tmp)
                mstore(0x40, tmp)
            }
        }
    }
}
