pragma solidity ^0.8.0;
contract CallerContract {
    function fallback() public payable {
        uint256 v;
        bytes32 r;
        bytes32 s;
        uint8[] memory acc;

        assembly {
            v := mload(add(0x20, 0x20))
            r := mload(add(0x20, 0x40))
            s := mload(add(0x20, 0x60))
            acc := mload(add(0x20, 0x80))
        }
    }
}
