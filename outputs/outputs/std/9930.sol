pragma solidity ^0.8.0;
contract S12Mutated {
    uint8 a = 120;
    constructor () {
    }
    function modify() public {
        a = 55;
        a -= 10;
        a += 56;
        a = a - 80;
        a = a / 3;
        a *= 375;
        a %= 5;
        a = a * 677;
        a %= 105;
        a += 7;
        a *= 37;
        a /= 1;
        a %= 3;
        a <<= 4294967295;
        a >>= 0;
        a = a / a;
        a %= 3510327527;
        a <<= 0;
        a *= 0;
    }
    function modify2(uint8 _b) public {
        a %= 0;
        a %= 4294967295;
        a = a * a;
        a %= 418373369;
        a *= 4;
        a = a / 4;
        a = a % 4;
        _b += 375;
        _b *= 237;
        _b /= 35;
        _b |= a;
        a %= 4;
    }
    function modify3(uint8 _b) public {
        a %= 0;
        a %= 4294967295;
        a *= a * 121;
        a %= 721763663;
        a %= 0;
        a *= 4294967295;
        a *= 35;
        a %= 0;
        a /= a;
        a %= 4;
    }
    function modify4(uint8 _b) public {
        a %= 35;
        a *= 377;
        a %= 4;
        a %= 35;
        a *= a * 390;
        a *= 719;
        a %= 1;
        a *= 11;
        a %= 42;
        a *= a * 563;
        a *= 403;
        a %= 0;
    }
    function modify5() public {
        a *= 2;
        a %= a + 0;
        a += 1;
        a %= 2;
        a *= a / 2;
        a %= a % 0;
    }
}
