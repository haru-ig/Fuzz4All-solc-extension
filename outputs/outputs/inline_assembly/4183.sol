pragma solidity ^0.8.0;
contract Invertor2 {
    function set (uint a) public returns (uint) {
        a = 10;
        int b = a/2;
        a = 10 + 2*b;
        a = 10 - b;
        return a;
    }
}
contract Invertor3 {
    function set (uint a) public returns (uint) {
        a = 10;
        a = 10 / 2;
        a = 10 - 2*a;
        a = 10 * 2;
        a = 10 / 2 - a;
        return a;
    }
}
contract Invertor4 {
    function set (uint a) public returns (uint) {
        a = 10;
        a = 2*a/100;
        a = a/100 - 2;
        if(a<100) {
            a = a / 100;
        } else {
            uint i = 0;
            while(b>1000) {
                uint r = a % b;
                if(r==0) {
                    i += 1;
                }
                a /= b;
            }
            a = a_n;
        }
        return a;
    }
}
contract Invertor5 {
    function invert (uint a) public returns (uint) {
        if(a>=10 && a>=-10) {
            int b;

            int tens;
            int units;
            while(a>1000) {
                b += 5;
                tens += 10;
                b = 5 * b/10;
                tens = 10 * tens/5;
                units = b - tens;
                a /= units;
                units = units *
