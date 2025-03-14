pragma solidity ^0.8.0;
contract Example19 {
    function __fallback(uint, bytes memory) public pure {}
}
contract Example21 {
    function __fallback() public pure returns (uint, bytes memory) {
        return (0, new bytes(0));
    }
}
