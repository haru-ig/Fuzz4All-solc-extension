pragma solidity ^0.8.0;
contract L16 {
    struct Store { uint x; }
    uint x = 0;
    function storeDiv(Store memory s) public {
        s.x /= 2;
    }
}
contract L4 {
    struct Store { uint x; }
    uint x = 0;
    function loadMultiply(Store memory s) public {
        s.x *= 5;
    }
}
contract L5 {
    struct Store { uint x; }
    uint x = 0;
    function loadDiv(Store memory s) public {
        s.x /= 3;
    }
}
contract L6 {
    struct Store { uint x; }
    uint x = 0;
    function loadAdd(Store memory s) public {

        s.x = s.x.add(5);
    }
}
contract L7 {
    struct Store { uint x; }
    uint x = 0;
    function loadSubtract(Store memory s) public {
        s.x.sub(_x);
        s.x = s.x.sub(10);
    }
}
contract L8 {
    struct Store { uint a; uint b; }
    function add(Store memory s) public {
        s.a += s.b;
    }
    function subtract(Store memory s) public {
        s.a -= s.b;
    }
}
contract L9 {
    struct Store { uint a; uint b; }
    function divide(Store memory s) public {
        s.a /= s.b;
    }
}
contract L10 {
    struct Store { uint a; uint b; }
    function multiply(Store memory s) public {
        s.a *= s.b;
    }
}
contract L11 {
    struct Store { uint a; uint b; }
    function storeAdd(Store memory s) public {
        s.a = 10;

        s.a = s.a.add(s.b);
    }
}<fim_middle>contract L12 {
    struct Store { uint x; }
    uint x = 0;
    function storeSubtract(Store memory s) public {
        s.x = s.x.sub(10);
        s.x.sub(s.a)
    }
}
contract L13 {
    struct Store { uint x; }
    uint x = 0;
    function storeAdd(Store memory s) public {
        s.x = 10;
