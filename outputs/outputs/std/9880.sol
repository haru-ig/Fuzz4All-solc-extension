pragma solidity ^0.8.0;
contract S8 {
    uint8 a;
    uint8 b;
    constructor () {
        a = 9;
        b = 11;
    }
    function increment() public {
        b++;
        decremen();
    }
    function decremen() public {
        b--;
        a--;
    }
    function add() public {
        a += b;
        b = 0;
    }
    function sub() public {
        a -= b;
        b = 0;
    }
    function mul() public {
        a = a * b;
        b = 0;
    }
    function div() public {

        if(b==0)
            b = 1;
        else
            a = a / b;
        b = 0;
    }
    function compare() public {
        if(b > 5)
            b -= 5;
        else
            b += 5;
    }
}
