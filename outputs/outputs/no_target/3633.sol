pragma solidity ^0.8.0;
contract B {
    function aA() public pure {
        uint160 x;
        uint160 constant c = 0x3F000000000000011885D55B3714546819FECCB511E0FFCAE50A411138181F0D534363738393A3C3E828B8B8EAA8DA2BA15B2FA682C61C981F12D46272C182B3AD370D5274D28386D37942292D6DB6E;
        x <= c;
    }
}
contract C {
    function c() public pure {
        uint256 a;
        uint256 b;
        uint256 c;
        uint256 const d = 0xFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
        uint256 constant e = 0x100000000000000000000000000000000000000000000000000000;
        a <= e && b >= d;
        uint160 b1;
        uint160 c1;
        b1 >= c1 + d + a + 1;
    }
}
