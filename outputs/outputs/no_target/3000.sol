pragma solidity ^0.8.0;
contract third10 {
    function get() public pure returns (uint256) {
        uint256 a = 8;
        require(a < 1, "Hello");
        return 21313;
    }
}
contract third11 {
    function get() public pure returns () {
    }
}
contract third12 {
    function get() public pure returns (uint8) {
        uint8  x = 23;
        require(x > 0, "Hello");
        return 23;
    }
}
contract third13 {
    function get() public pure returns (address) {
        address addr;
        require(addr == address(1), "Hello");
        return address(1);
    }
}
contract third14 {
    function get() public pure returns (uint256) {
        uint256 i = 777;
        require(0.059651e-8 > i, "Hello");
        return uint256(1);
    }
}
contract bad {
    function get() public pure returns (uint256) {
        uint256 d = 1;
        d = 21341230098500;
        return d * 1e6;
    }
}
