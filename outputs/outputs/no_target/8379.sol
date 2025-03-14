pragma solidity ^0.8.0;
contract Unsafe3b {
    address a;
    bool b;
    uint constant c = uint(2**255);
    constructor(uint _x) public {
        a = address(c);
        b = _x < c;
    }
    function f() public {
        a = address(0);
    }
    function g() public {
        b = false;
    }
}
contract Unsafe4 {
    address a;
    bool b;
    string c;
    constructor(string memory _x) public {
        a = address(4);
        b = true;
        c = _x;
    }
    function f() public {
        a = address(0);
    }
    function g() public {
        b = false;
    }
}

pragma solidity ^0.8.0;
contract Unsafe5 {
    address a;
    bool b;
    uint constant c = uint(2**255);
    constructor(uint _x) public {
        a = address(4);
        b = _x < c;
    }
    function f() public {
        a = address(c);
    }
    function g() public {
        b = false;
    }
}
