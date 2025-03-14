pragma solidity ^0.8.0;
contract Test75 is Test74 {





    function test() public pure {
        (uint8[21] memory x) = (0x101F, 0xFFF);
        j(x[4406]);
    }
}

pragma solidity ^0.8.0;
contract Test76 {
    uint8[21][] public b;
    function j(uint256 x) public pure {
        b[21][x & 0xff] = x + 1;
        return;
    }
}
