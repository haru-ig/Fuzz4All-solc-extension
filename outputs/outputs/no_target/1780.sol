pragma solidity ^0.8.0;
contract Mutate2 is Mutate3 {
    event Log1(uint);
    uint public _1;

    constructor() public {
        _1 = 42;
        emit Log1(_1);
    }

    function setNewUint(uint _2)
        external {
        _1 = _2;
        emit Log1(_1);
    }
}

pragma solidity ^0.8.0;
contract Mutate4 {
    uint public _1;
    int public _2;
    constructor() public {
        _1 = 42;
        _2 = -1;
    }


    function f() public view returns (uint) {
        (uint a, uint b, uint c, uint d) = (_1, _1, _1, _1);
        (uint,uint) = (_1,_1);
        a = 3;
        (_1,) = (4,5);
        a = 6;
        b = c;
        c = 42;
    }


    function g() public view returns (bool) {
        address a = address(0x1);
        address b = address(new Mutate2());
        address c = address(this);
        address d = address(uint32(1));
        address e = a;
        bool f = _1 < b;
        bool g = (b, a) == _1;
        bool h = (e,d) == (e,d);
        bool j = (1,2) < (3,4);
        bool h = 0xD0B89DBEFEE4BD03E06DB1CA56635121EBBE38AD5F26F69;
        bool k = (a,b) == (4,5);
        (e,d) = (b,4);
        a = b;
        b = c;
        c = 42;
    }
}
/* Please create a complete program, which is expected to show the results of these mutations:
   (a) Calling a function that was removed
   (b) Using a function that was removed
   (c) Calling a function from a contract that was never called
   (d) Using a function from a contract that
