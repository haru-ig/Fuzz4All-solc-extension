pragma solidity ^0.8.0;
contract MutatedVersionOfSame2
{
    function mutateIt(uint x) public {
        uint y = doIt(x);
        x = x + y;
        doIt(y);
        if (x <= 3)
            y = 0;
        else
            y = y + 1;
        x = x - y + 7;
        y = y - 0;
        y += y + 20;
        doIt(x + x);
        doIt(y * 11);
        doIt(x);
        doIt(y);
        doIt(0);
        x = x - x / x * 11;
        doIt((y - y) / 19);
    }

    function doIt(uint x) private view returns(uint y) {
        uint t;
        x = t + 2;
        t = 5 * x;
        t = y + x - 7;
        y = x - 19;
        x = 1000;
        z = y - x * x + 2;
        doIt(x + z);
        T = 20 * x * x;
        T = x * x + T;
        assert(y == T/6);
        y = z * x;
        y = x - z * 19;
        y = x - 20;
        y = y / 13;
        y = (x + 21) + y;
        doIt(111);
        t = x + 3;
        t = doIt(x + t / 2);
        T = x * x - (x + 3);
        doIt(x + y);
        T = doIt(7 * x * (x^2) - t * (t^2));
        t = T / 6;
        T = T + 2;
        for (i = 0; i<x; i++) {
            x = x + x;
            T = T * (x + t - 3);
