pragma solidity ^0.8.0;
contract Example1 {
    uint private value = 0;
    fallback() public {}

    function _fallback() public pure returns (bytes memory) {
        require(msg.data.length > 0);
        return new bytes(1);
    }
}
