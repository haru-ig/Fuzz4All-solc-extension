pragma solidity ^0.8.0;
interface I
{
    function add1(uint) public pure returns (uint);
    function multiply(uint) public pure returns (uint);
}
library Lib
{
    function add(I i) public pure returns (uint) {
        return i.add1(1) + Lib.add.add(uint(7));
    }
}
address _;
bytes32 constant S = keccak256("Hello World!");
contract C
{
    constructor() public {}
    function f() public pure {
        bytes32 b = Lib.add.with(S, bool(true));
        bool c = (b < _);
        assert(c);
    }
}

pragma solidity 0.8.12;

contract A
{
    constructor() public {
        console.log("Hello world!");
    }

    function add() public pure returns(uint) {
        return 1;
    }
}
contract B is A
{
    constructor() public {
        console.log("I'm B.");
    }

    function add2() public pure returns(uint) {
        return 2;
    }
}
contract C is B
{
    constructor() public {
        console.log("I'm C.");
    }
    function f() public pure {
        bool b = Lib.add.with(S, bool(true));
        bool c = (b == Lib.add(uint(true)));
        bool d = (b == Lib.add.with(S, bool(true)));
        assert(b);
        assert(!c);
        assert(!d);
    }
}
contract D is B
{
    constructor() public {
        console.log("I'm D.");
    }

    function f() public pure {
        uint x = uint(true);
        uint y = (Lib.add.with(S, x));
        bool b = Lib.add.with(S, bool(true));
        bool c = (b == Lib.add.with(S, bool(true)));
        bool d = (b == Lib.add.with(S, x));
        uint x2 = uint(1);
        uint y2 = (Lib.add
