pragma solidity ^0.8.0;
contract Unsafe3 {
    address a;
    bool b;
    constructor() public {
        a = address(4);
        b = true;
    }
    function f() public {
        a = address(1);
        b = false;
    }
    function g() public {
        a = address(2);
        b = true;
    }
}
contract Unsafe4 {
    address a;
    bool b;
    uint16 c;
    constructor() public {
        a = address(4);
        b = true;
        c = 1;
    }
    function f() public {
        a.transfer(4);
    }
}
contract Unsafe4 {
    address a;
    bool b;
    uint16 c;
    constructor() public {
        a = address(4);
        b = true;
        c = 2;
    }
    function f() public {
        a.transfer(4);
    }
}
contract Unsafe4 {
    address a;
    bool b;
    uint16 c;
    constructor() public {
        a = address(4);
        b = true;
        c = 3;
    }
    function f() public {
        a.transfer(1);
    }
}
contract Unsafe5 {
    address a;
    bool b = true;
    constructor() public {
        a = address(0);
    }
    function f() public {
        a = address(0);
    }
    function g() public {
        a = address(1);
        b = false;
    }
}
contract Unsafe5 {
    address a;
    bool b;
    constructor() public {
        a = address(0);
    }
    function f() public {
        a = address(0);
    }
    function g() public {
        a = address(1);
        b = false;
    }
    function h() public {
        a = address(2);
        b = true;
    }
}
