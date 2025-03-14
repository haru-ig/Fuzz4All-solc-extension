pragma solidity ^0.8.0;
contract third4 {
    function f() public view returns (bytes memory) {
        bytes memory b = new bytes(1);
        b[0] = 0x01;
        return b;
    }
}
contract third {
    function get() public view returns (bytes memory) {
        return new bytes(1);
    }
}
