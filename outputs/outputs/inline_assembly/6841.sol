pragma solidity ^0.8.0;
contract MixedContactsExample082 {
    function foo() public {
        uint(y);
        uint(x);
        uint x = 1 / 0;
        uint y2 = 2 - test;
        uint xx = test / 0;
        y;
        (y);
        (y);


        (x, y);
        (x, x);
        (x, x);

        uint z = 1;
        ((x,y));
        ((x,y));
        ((x,y));

        ((y,y));
        ((x,y));
        ((x,x));

        y;
        x;

        ((y,x));
        ((x,x));
        ((x,x));

        ((y,x));
        ((x,x));

        y;
        x;
        (x,y);
        (x,x);
        (x,x);
        x = 1;
        x;

        x;
        x;
        (x,x);
        (x,x);
        (x,x);
        x;
        x;
        (x,y);
        x;
    }
}

contract MixedContactsExample083 {
    uint public constant test = 42;
    bytes32 public x2;
    bytes32 public y2;
    function set_x(uint _x) public {
        uint(x2);
        x2;
        y2 += _x;
    }
    function set_y2(bytes32 _y) public {
        uint(x2);
        y = _y + test;
    }
    constructor() {
        (y2);
        y2 += test;
    }
    function foo() public {
        uint(y);
        uint(y2);
        uint(y);

        uint x = 1 / 0;
        bytes32 x2 = "hello";
        bytes32 _x2;

        (x2, x);
        (x2, x2);
        uint y2 = 2 - test;
        (_x2, _x2);
        uint y2 = _x2 / _x2;
        _x2 - x2;
    }
}
