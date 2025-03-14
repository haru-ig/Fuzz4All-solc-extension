pragma solidity ^0.8.0;
contract S7 {
        uint private a;
        uint256 private b;
    function change(uint x) public {
        a = a + 1;
        b = a + 3;
    }
    function notEnoughChange() public {
        a = a + 1;
        b = b + 3;
    }
    function call() public {
        change(2);
        b = a + 3*a*2;
    }
    function callNotEnoughChange() public {
        change(2);
        a = a + 1;
        b = b + 3*(a + 3);
    }
}

contract S9 {
        uint private a;
        uint256 private b;
        function change(uint x) public {
            a = x + 1;
            b = a + 3;
            a = x + 2;
            b = b + (2121*a)/3;
            b = b + x*b + 15;
        }
        function changeNotEnoughChange() public {
            a = a + 1;
            b = a + 3;
            a = a + 2;
            b = a + b*b;
            b = a + b*b;
            b = b + (x + 2)*b + 15;
        }
        function call() public {
            a = a + 1;
            b= b + 3*(a + 3);
            b = a + 3;
            b = b + (2331*b)/42 + 13;
        }
        function callNotEnoughChange(uint x) public {
            b = b + (x + 1)*b;
            b = x*b + 13*b*a;
            b = b + 15;
        }
    }
