pragma solidity ^0.8.0;
contract L73Dynamic {
    uint[3] x;
    bytes32 constant x2 = keccak256(abi.encodePacked("test"));
    uint[64] constant x3 = uint16[64](new bytes(64));
    uint[64] x4;
    function sneaky() public view {
        if (true) {
            x4 = x3;
        } else {
            x4 = x[2];
        }
    }
}
