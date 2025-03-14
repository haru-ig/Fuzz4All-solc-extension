pragma solidity ^0.8.0;
contract third5 {
    function get() public pure returns (bytes memory) {
        bytes memory b = new bytes(1);
        b[0] = 1;
        return b;
    }
}
