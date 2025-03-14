pragma solidity ^0.8.0;
contract ProgrammerTest {
    function test() public {
        bool x = true;
        bool y = false;

        uint a = 3;
        uint b = 7;

        assert(x and y);
        assert(a == b);

        x = 0;
        b = 1;
        assert(a == b);
    }
}
