pragma solidity ^0.8.0;
contract c {
    bytes4 constant S4 = 0x11000000;
    bool public exists = true;
    function callme() {
        bytes memory a = "a";
        (uint160 b, uint c ) = (from(address(this)), a.length);
    }
}
pragma solidity ^0.8.0;
contract c {
    bytes4 constant S4 = 0x11000000;
    bool public exists = true;
    function callme() {
        bytes memory a = "a";
        (uint160 b, uint c ) = (from(bytes32(address(this))), a.length);
    }
}
