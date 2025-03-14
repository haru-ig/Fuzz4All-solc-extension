pragma solidity ^0.8.0;
contract S8Mutated7 {
    uint8 a;
    uint8 b;
    uint8 c;
    uint8 d;
    uint8 e;
    uint8 f;
    constructor () {
        a = 99;
        b = 100;
        c = 100;
        d = 100;
        e = 100;
        f = 100;
    }
    function change1() public {
        a = a + 1;
        b = b + 1;
        c = c + 1;
    }
    function change2() public {
        a = a - 1;
        b = b - 1;
        c = c - 1;
    }
    function change3() public {
        a = a * 1;
        b = b * 1;
        c = c * 1;
    }
    function change4() public {
        a = a / 1;
        b = b / 1;
        c = c / 1;
    }
    function change5() public {
        a = a + value[1];
        b = b + value[2];
        c = c + value[3];
    }
    function change6() public {
        a = a - value[1];
        b = b - value[2];
        c = c - value[3];
    }
    function change7() public {
        a = a * value[1];
        b = b * value[2];
        c = c * value[3];
    }
    function change8() public {
        a = a / value[1];
        b = b / value[2];
        c = c / value[3];
    }
    struct valueStruct { uint8 a; uint8 b; uint8 c; }
    valueStruct value;
    function change9() public {
        a = 1200;
        value.a = 120;
        value.b = 120;
        value.c = 120;
    }
    constructor() {
        a++;
        b++;
        c++;
    }
    modifier add {
        a++;
        b++;
        c++;
        _;
    }
}

pragma solidity ^0.8.0;
contract S8Mutated12 {
    function f() public {
        uint storage[] storage x = new
