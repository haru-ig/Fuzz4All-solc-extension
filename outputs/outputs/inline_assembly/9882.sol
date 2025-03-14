pragma solidity ^0.8.0;
contract Mutant1 {
    uint x;
    constructor(uint _x) {
        x = _x;
    }
    function f() public {
        x += 1;
    }
}
contract Mutant2 {
    uint x;
    constructor(uint _x) {
        x = _x;
    }
    function f() public {
        x /= 2;
    }
}
contract Mutant3 {
    uint x;
    constructor(uint _x) {
        x = _x;
    }
    function f() public {
        x %= 2;
    }
}
contract Mutant4 {
    bool a;
    uint x;
    uint y;
    constructor() {
        a = false;
    }
    function f() public {
        if(a) {
            x = 2;
        } else {
            x = x + 1;
        }
        y = 2;
        if(a) {
            x = x * 2;
            y /= 2;
            x + y;
        }
    }
}
contract Mutant5 {
    uint x;
    constructor(uint _x) {
        x = _x;
    }
    function f() public {
        int h = x / y;
    }
}
contract Mutant6 {
    uint x;
    constructor(uint _x) {
        x = _x;
    }
    function f() public {
        uint b;
        (b,) = x * (y *= 2);
    }
}
contract Mutant7 {
    uint x;
    constructor(uint _x) {
        x = _x;
        x = x * 2;
        x += 1;
    }
    function f() public {
        x = x * 3;
    }
}
contract Mutant8 {
    uint x;
    uint z;
    constructor(uint _x, uint _z) {
        x = _x;
        z = _z;
        z = 0;
        z = 0;
    }
    function f() public {
        x;
        x += 1;
        x = x / 2;
        x = x * 2;
        x = x % 2;
        x = 2;
        if(a) x;
        if(b) x = 2;
        if(c) x %= 3;
        if(d) x *= 3;
        if(e) {
            x *= 2;
            x += 4;
        }
