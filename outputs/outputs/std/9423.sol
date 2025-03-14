pragma solidity ^0.8.0;

contract Math
{

    function pow(uint x, uint n) public pure returns (uint) {
        if(n==0) return 1;
        if(n==1) return x;
        return ((n>0)? pow(x,(n-1)): (x*(1/pow(x,_a))));
    }


    function toPower(uint x, uint n, uint _a) public pure returns (uint) {
        if(n==0) return 1;
        if(x==0) return 1;
        if(n<_a && x<1) return uint(x**(1)/x);
        if(n<_a && x>0) return uint((x**_a)*x);

        uint quotient = (x%(x**(n*x/_a))*x**(n/(n*x/_a)));
        uint remainder = (x/x**(n/(n*x/_a)));
        return (uint(1)/x) * quotient + remainder;
    }
}
