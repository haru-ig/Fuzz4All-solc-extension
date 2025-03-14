pragma solidity ^0.8.0;
contract MutatedCallerContract {
    function mutate() public {
        uint256 v;
        bytes32 r;
        bytes32 s;
        uint8[] memory acc;
        assembly {
            v := mload(add(0x20, 0x20))
            acc := mload(add(0x20, 0x50))
        }
    }
}
