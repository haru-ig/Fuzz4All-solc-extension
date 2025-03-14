pragma solidity ^0.8.0;

contract SimpleStore8 {

    struct MyUints {
        uint x;
        uint y;
    }

    function f() public returns (uint8) {
       return 168;
    }

    function g() public {

        {
            MyUints storage s = MyUints(0);
            s.x = 29u;
            s.y = 321u;
        }
        assert(168 == f());
    }
}
