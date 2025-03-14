pragma solidity ^0.8.0;
contract S11Besu7 {
    uint8 a, b, c, d, e;
    constructor () {
        a = 4;
    }
    function call_change8() public {
        e = change8();
    }
    function change8() public return (uint8) {
        e = (a << 1) + a + 5;
        return e + 10;
    }
}
contract S11Besu7Bare10 {
    uint8 a;
    constructor () {
        a = 5;
    }
    function call_change9() public {
        b = change9();
    }
    function change9() public return (uint8) {
        return a + 7;
    }
    function call_change10() public {
        c = change10();
    }
    function change10() public return (uint8) {
        c = e + 3;
        if (Bitwise.isPowerOfTwo(c)) {
            c = c << 1;
        }
        return a + 3;
    }
}
contract S11Besu7Bare1 {
    uint8 a;
    constructor () {
        a++;
    }
    function call_change() public {
        c = change();
    }
    function change() public return (uint8) {
        return a + 7;
    }
    function call_change10() public {
        a = a + 1;
    }
}
contract S11Besu7Bare2 {
    uint8 a, b;
    constructor () {
        a++;
    }
    function call_change2(uint8 x) public {
        if (Bitwise.isPowerOfTwo(x)) {
            a = a + 1;
        }
    }
    function call_change3(uint8 x) public {
        uint8 x_ = x;
    }
    function change2() public return (uint8) {
        a = a + 3;
        return a;
    }
}
contract S11Besu7Bare4 {
    uint8 b;
    constructor () {
        b += 1;
    }
    function call_change1(bool a_) public {
        if (a_) {
        } else {
        }
    }
    function change1() public return (bool) {
        while( a & b == 0 ) {
            b = b + 1;
        }
        return b;
    }
}


pragma solidity ^0.8.0;
contract S12Mover97 {
    address payable[] public receivers;
    uint time = block.timestamp;
    uint amount = 200
