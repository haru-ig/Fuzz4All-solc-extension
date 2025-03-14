pragma solidity ^0.8.0;
contract NewMutatedABICoder {
    function encode(bool) internal pure returns (address, bytes4, bytes) {
        return (address(0), 0, bytes(0));
    }
    function decode(address who, bytes memory sig) public pure returns (bool) {
        return false;
    }
}
