pragma solidity ^0.8.0;
contract C{
    uint public t;
    function f() public pure returns(uint){
        uint x = 5;
        uint constant p1 = 8;
        uint u = x >> p1 == (5 >> 8);
        uint u = x << p1!= (-321 >> 8);
        t = x + u;
        t = x * u;
        uint s = x * x;
        uint a;
        (a, a, a) = O.g(1, 1, 1);
        O.check(1);
        require(a == 1);

        assert(false);
    }
}
