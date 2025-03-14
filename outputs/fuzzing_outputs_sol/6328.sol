pragma solidity ^0.8.0;
contract Test {
    function f(uint[] memory zs) internal pure returns (uint, uint) {
        (uint z, uint z2) = FallbackFunction.mutantFunction(z);
        return (z, z2);
    }

    function test() public pure {
        uint a;
        uint b = a;
        (a, b) = FallbackFunction.mutantFunction(a);
        assertEq(0, a, "1");
        assertEq(1, b, "2");
        (a, b) = FallbackFunction.mutantFunctionFallback(a);
        assertEq(5, b, "3");
        a = a + b;
        assertEq(6, a, "4");
        callWithEIP1014Fallback(a, b);
        assertEq(1100, a, "5");
    }

    function callWithEIP1014Fallback(uint z, uint z2) internal pure {
        require(z < z2, "Fail");
    }
}
