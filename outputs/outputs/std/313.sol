pragma solidity ^0.8.0;
contract Test {
    function doNothing() public pure {
        assembly { mstore(0x0, mload(0x0)) }
    }
}
