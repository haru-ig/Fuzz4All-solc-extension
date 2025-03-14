pragma solidity ^0.8.0;
contract third {
    function get() external pure returns (bytes memory) {
        return new bytes(2);
    }
}
