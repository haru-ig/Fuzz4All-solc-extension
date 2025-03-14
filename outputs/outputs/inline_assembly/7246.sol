pragma solidity ^0.8.0;
contract Simple {
    function doSomething() public {
        uint x = 1;
        bool f = false;
        do {
            f = true;
            x = x * 100;
        } while (!f);
        x += 1;
        x++;
        x = x * x;
        x-- * x;
        x = (x & -x) / (x & ~(x - 1));
        x >>= 0;
    }
}
