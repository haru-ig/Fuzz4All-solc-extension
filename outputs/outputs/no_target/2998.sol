pragma solidity ^0.8.0;
contract third6 {
    function get() public pure returns (uint8) {
        return 2;
    }
}
contract third7 {
    function get() public pure returns (bytes memory) {
        return new bytes(3);
    }
}
contract third8 {
    function get() public pure returns (address) {
        return address(10);
    }
}
contract third9 {
    function get() public pure returns (uint256) {
        return 0x4000;
    }
}
