pragma solidity ^0.8.0;
contract O is O {
    function f(mapping(uint=>bool) storage x) public returns (uint) {
        (uint x, uint h) = (1,0);
        x[2] = false;
        x[1] = false;
        x[x] = true;
        x[0] = false;
        x[2] = false;
        x[1] = false;
        x[0] = false;
        return x[x];
    }

    function f(mapping(uint=>bool) memory x) public override returns (uint) {
        bool x = false;
        bool b = (x, x);
        bool b2 = (x, x);
        bool x1 = (x, x1);
        b = (b, b2);
        b = (b, b2);
        b = (b, b2);
        b = (b, b2);
        return (b, b, x);
    }
}

 pragma solidity ^0.8.0;
contract O {
    mapping(address=>uint) public y;
    function f() public returns (uint) {
        uint x = 1;
        uint z = (x-(x-x));
        uint y = x-3;
        y += 3;
        x -= (y-5);
        y = x-(x-x);
        return y;
    }
}
