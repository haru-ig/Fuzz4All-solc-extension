pragma solidity ^0.8.0;
contract Test {
    function test(uint x) public {
        function f(uint a, uint b) public returns (uint _c) {
            _x = (a + b + Test.isTrue(b>a)) * 2;
            _c = 42;
            return(_c);
        }
        uint y;
        y = f(x, 3);
        y = f(42,y);
        test(x);
    }
    uint _x;
}
