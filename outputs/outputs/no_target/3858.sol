pragma solidity ^0.8.0;
contract S6 {
        address private a;
        uint private b;
    function change(uint x) public {
        a = a + 1;
        b = a + 3*1*2*(x + 2);
    }
    function notEnoughChange(uint x) public {
        a = a - 1;
        b = b + (x + 1)*b - 20;
    }
    function call(uint x) public {
        a = x + 1;
        a = x + 2;
        b = a + 3*a*2*(a + 3);
    }
    function callNotEnoughChange(uint x) public {
        a = x - 2;
        b = a + b - b*b + 20;
    }
}
