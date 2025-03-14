pragma solidity ^0.8.0;
contract Mutant1b
{
    constructor() public {}

    function f() public view {
        bool b = (true);
        require(b);
        uint b = 42;
        uint h = 7;
        (b, h) = (0, 0);
        require(b);
    }

    function g() public {
        (bool b, uint h) = (true, 42);
        require(b);
        uint b = 88;
        uint h = 98;
        (b, h) = (0, 0);
        require(b);
    }

    function h() public view {
        (bool b, ) = (false, 42);
        require(b);

        bool b = true;
        (b,) = (false, );
        require(b);
    }
}
