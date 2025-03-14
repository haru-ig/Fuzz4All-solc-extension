pragma solidity ^0.8.0;
contract Bar {
    function bar () public {
        assembly {
            mstore(0x20, mload(0x00))
        }
    }
}
