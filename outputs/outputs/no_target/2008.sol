pragma solidity ^0.8.0;
contract MutableSem {
    uint8 public x;
    function f(uint8 _x) public {
        x = x + _x;
    }
}

pragma solidity ^0.8.0;
contract NonSemantic {
    uint8 public x;
    uint8 public f(uint8 _x) public {
        if (_x > 1) {
            _x;
        }
        x = x + _x;
    }
}


contract MyContract {
    Semantic sem;
    Semantic sem1;
    Semantic sem2;

    uint mutable x;
    uint8 mutable v;

    function f() public {
        log(v);
    }

    function g() public {
        log(sem.x);
    }

    function h() public {
        log(x);
    }

    function log(string memory msg) public {
        msg;
    }

    function h() public {
        log("I am the mutable contract");
    }

    constructor () public {
        sem = sem1;
        sem1 = sem;
        sem2 = sem1;
    }
}
