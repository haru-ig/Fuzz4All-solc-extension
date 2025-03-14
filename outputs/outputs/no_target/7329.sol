pragma solidity ^0.8.0;
contract NewMutatedAbiCoder {
    function bar() public pure {
        uint a = -2 **  16;
        uint b = -1;
        uint c = -65536 ** 16 ** 16;
        uint d = ~(uint160(b) + uint(c));
        uint e = ~(uint160(foo(b, b, b)));
        unchecked {
            assertEq(a, bar(b, b, b));
            assertEq(b, bar(b, b, b));
            assertEq(c, bar(b, b, b));
            assertEq(d, bar(b, b, b));
            assertEq(e, bar(b, b, b));
        }
    }
}
