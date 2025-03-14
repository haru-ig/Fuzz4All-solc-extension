pragma solidity ^0.8.0;
contract third10 {
    function get() public pure returns (uint8) {
        return 20;
    }
}
contract third11 {
    function get() public pure returns (bytes memory) {
        return new bytes(30);
    }
}
contract third12 {
    function get() public pure returns (address) {
        return address(100);
    }
}
contract third13 {
    function get() public pure returns (uint256) {
        return 0x8000;
    }
}
