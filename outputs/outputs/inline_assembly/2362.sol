pragma solidity ^0.8.0;
contract Mutator {
    uint A = 10;
    uint B;
    function increaseA(uint x) public {
        B += x;
    }
    function increaseB(uint x) public {
        A -= B * x;
    }
    function subtractA(uint x) public {
        B = x;
    }
    function subtractB(uint x) public {
        if (A == x) revert();
        A = A - (B * x);
    }
    function multiplyB(uint x) public {
        if (A == 0) revert();
        B = A / x * x * B;
    }
}

pragma solidity ^0.8.0;
contract Mutator {
    uint A = 10;
    uint B;
    function increaseA(uint x) public {
        B += x;
    }
    function increaseB(uint x) public {
        A -= B * x;
    }
    function subtractA(uint x) public {
        B = x;
    }
    function subtractB(uint x) public {
        if (A == x) revert();
        A = A - B;
    }
    function multiplyB(uint x) public {
        if (A == 0) revert();
        B = A / x * x * B;
    }
}
