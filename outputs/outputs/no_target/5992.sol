pragma solidity ^0.8.0;
contract MyContract {
    function add(bytes16 a, bytes16 b) public pure returns (bytes16) {
        return bytes(type(address)).convert(a);
    }
}
