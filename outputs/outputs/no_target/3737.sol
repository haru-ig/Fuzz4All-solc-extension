pragma solidity ^0.8.0;
contract E {
    uint24 d;
    uint8 c;
    function g() public returns (uint24) {
        return uint24(c + 0x800) - 0x800;
    }
}

pragma solidity ^0.8.0;
contract E {
    uint8 d;
    uint80 c;
    function g() public returns (uint80) {
        return uint80(c + 0xff09) - 0xff09;
    }
}
