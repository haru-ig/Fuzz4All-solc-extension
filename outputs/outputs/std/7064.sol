pragma solidity ^0.8.0;
contract GreaterThan {
    uint256 a;
    constructor () {
        a = 1;
      }
      function greaterThan() public {
        a > 5;
    }
    function lessThan() public {
        a <= 5;
    }
}
contract LessThan {
    uint256 a;
    constructor () {
        a = 1;
      }
      function lessThan() public {
        a < 5;
    }
    function greaterThan() public {
        a >= 5;
    }
}
contract Modulo {
    uint256 x;
    uint256 y;
    function setx() public {
        x = 5;
    }
    function sety() public {
        y = 15;
    }
    function mulBy(uint x) public {
        x = x * 2;
    }
    function subtractBy(uint x) public {
        x = x * 2;
        x = x - 50;
    }
    function divideBy(uint x) public {
        x = x / 2;
        x = x + 50;
    }
    function modOperation(uint x) public {
        x = x % 2;
    }
    function power(uint x) public {
        x = x ** 2;
    }
}
contract IntegerMath {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 flag = 0;
    uint256 shift = 0;
    uint256 carry = 0;
    uint256 maxInt = 2**256 - 1;

    uint256 maxUint = 2**256;

    uint256 minInt = uint(2 ** uint(-2**256));
    uint256 minUint = uint(minInt) - 1;


    constructor () public {
        a = 4294967295;
        b = 4294967297;
        c = 6;
    }

    function add() public {
        a = a + b;
        if(flag == 0) {
            if(a == maxUint) { flag = 1; } else { shift = 0; }
        if(c!= 0) {
            a = a + 16;
        }
    }
    }

    function greaterThanEqual() public {
        a >= minUint;
        a >= 0xFF;
    }

    function greaterThan() public {
        a > a;
    }

    function lessThanEqual() public {
        a <= maxUint;
        a <= uint(-minUint);
    }

    function lessThan() public {
        a < a;
    }

    function multiplyBy() public {
        b ^=
