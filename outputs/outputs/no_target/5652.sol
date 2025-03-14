pragma solidity ^0.8.0;
contract CoC{
    function g5(uint a, uint i) public {
        uint[] storage arr = new uint[](50);
        uint j = 0;
        for (uint i; i < 50; i++) arr[i] = i+5000;
        arr[j+1] = i+5000;
        i = 1;
        i = 0;
        i--;
        i = 1;
        i = 1;
        i = 50;
        i = 50;
        i--;
        while (i!=1);
        i = 1;
        while ((i>0));
        i = 1;
        while ((i<0));
        i = 1;
        while ((i<=50));
        i = 1;
        while ((i>=50));
        i = 2;
        i = 2-i;
        i = 2+i;
        i = -5;
        i = 50-(5*i);
        i = 50-(5*i);
        i = i+i;
        i = i+i;
        i = i+i;
        i = i+i;
    }
    function g6(uint a, uint i) public {
        uint[] storage arr = new uint[](50);
        uint j = 0;
        for (uint i; i < 50; i++) arr[i] = i+5000;
        arr[j+1] = i+5000;
        i = 1;
        a = i+5000;
        i = a+5000;
        i = 50+i;
        i = 2+i;
        i = 50-(5*i);
        i = 50-(5*i);
        i = i+i;
        i = i+i;
        i = i+i;
        i = i+i;
        i = i+i;
    }
}
