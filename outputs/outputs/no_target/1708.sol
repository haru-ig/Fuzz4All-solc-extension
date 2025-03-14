pragma solidity ^0.8.0;
contract Mutate0016a {
    uint256 input4;
    modifier m() {
        input4 = input4 + 1;
        _;
    }
    function f() m public view {
        input4 = input4 * 5;
        assert(input4 == (15).sub(2));
        input4 = input4 >= 1001 && input4 <= 1000000;
        assert(input4 == true);
    }
    function g() m public view {
        input4 = input4 - 2;
        assert(input4 == (3).add(1));
        input4 = input4 > 9 && input4 < 3;
        assert(input4 == true);
    }
    function h() m public view {
        input4 = input4 << 1;
        assert(input4 == 2);
        input4 = input4 > 0 && input4 <= 2;
        assert(input4 == true);
    }
    function i() m public view {
        input4 = input4 >> 1;
        assert(input4 == 1);
    }
    function j() m public view {
        input4 = input4 + 6;
        assert(input4 == 7);
    }
    function mutMe() m public {
        input4 = input4 + 6;
        input4 = input4 + 6;
    }
}
