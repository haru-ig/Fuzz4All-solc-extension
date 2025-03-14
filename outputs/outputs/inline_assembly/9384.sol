pragma solidity ^0.8.0;
contract A {
    event e(uint);
    int constant d = 10;
    uint constant r = 10;
    address foo;
    uint constant z = 10;
    constructor() public {
        foo = msg.sender;
        foo.transfer(30);
        foo.transfer(40);
    }
    function h() public {
        emit e(1);
    }

    modifier m() {
        emit e(1);
        _;
    }

    function f() public pure {
        assert(false);
    }

    function g() public pure {
        assert(true);
    }

    function h() public view m {
        assert(false);
    }

    function k() public view m {
        assert(true);
    }

    function h2() public view m returns(uint) {
        assert(true);
        return 1;
    }

    function g2() public view {
        assert(false);
    }

   function h3() public view m {
        assert(false);
        return 1;
    }

    function g3() public view(uint) {
        assert(true);
    }

    function h4() public {
        int x = d;
        uint y = r;
        assert(x == 10);
        assert(y == r);
    }

    function h5() public view {
    }

    function h6() public view {
        uint _ = m;
    }
}
