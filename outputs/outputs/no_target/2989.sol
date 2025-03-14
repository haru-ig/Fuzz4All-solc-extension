pragma solidity ^0.8.0;
contract third4 {
    function f() public view returns (bytes memory) {
        b = new bytes(1);
        b[0] = 0x00;
        return b;
    }
}
