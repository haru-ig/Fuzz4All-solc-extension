pragma solidity ^0.8.0;
contract TestMath {
    uint myArray = 3;
    uint myNumber = 5;

    function myIncrement() public {
        myArray = MyMath.mul(myArray, 2);
        myNumber += myArray;
    }

    function myIncrementBig(uint64 a) public {
        a = MyMath.mul(uint64(a), 2);
        uint64 b = MyMath.div(uint64(a), 2);
        uint64 c = MyMath.sqr(uint64(a));
        myNumber += a;
    }

    function myIncrementFloat(uint a) public {
        a = MyMath.mul(uint(a), 2);
        uint b = MyMath.div(uint(a), 2);
        uint c = MyMath.sqr(uint(a));
        a += 1;
        a = a + c;
        b += c;
    }

    function myDivision(uint dividend, uint divisor) public {
        if(divisor == 0) revert("Cannot divide by zero");
        uint div = MyMath.mul(dividend, 1);
        dividend *= divisor;
        divisor *= div;

        div = MyMath.div(dividend, 1);

        if((dividend < divisor) || (div < 1)) revert("Division cannot be performed");
    }
}
