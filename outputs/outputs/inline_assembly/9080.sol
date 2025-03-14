pragma solidity ^0.8.0;
interface I
{
    function add(uint) external pure returns (uint);
    function div(uint) external pure returns (uint);
    function mul(uint) external pure returns (uint);
}
library Lib
{
    function sub(uint a, uint b) public pure returns (uint) {
        return ((a >= b)? (a - b) : (b - a));
    }
    function add(uint a, uint b) public pure returns (uint) {
        return (((a + b) >= (2 ** 255 - 1))? ( a + b -2 ** 255 + 1 ) : ( a + b ));
    }
    function mul(uint a, uint b) public pure returns (uint) {
        if(a == 0 || b == 0)
            return 0;
        return ( a * b );
    }
    function div(uint a, uint b) public pure returns (uint) {
        return (a / b);
    }
}
contract Con
{

    function (uint n) private (uint c) {
        c = n;
    }


    constructor(uint a) public {
        c = a;
    }


    uint c;
    uint public x = 3;

    function mul(uint n) public {
        x = Lib.mul(x,n);
    }

    function add(uint m, uint n) public {
        x = Lib.add(x,n);
    }

    function sub(uint m) public {
        x = Lib.sub(x,m);
    }

    function div(uint m) public {
        x = Lib.div(x,m);
    }

    function pow(uint m, uint n) public {
        x = Lib.mul(x,n);
    }
}
