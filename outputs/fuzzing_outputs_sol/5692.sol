pragma solidity ^0.8.0;
contract semanticallyequivalent13
{
    function contractWithFallbackFunction()public {
        uint  x = 1;
        uint  y = 10;
        test();
        fallback();
        x = 1;
        y = 10;
    }
    function test()public {
        uint expected = 10;
        x = 1;
        y = 20;
        assertEq(y, expected);
    }
    receive() external pure {
       uint expected = 11;
       assertEq(x, expected);
       uint expected2 = 1;
       assertEq(y, expected2);
    }
}
