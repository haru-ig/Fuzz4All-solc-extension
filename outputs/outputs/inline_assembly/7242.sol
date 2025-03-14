pragma solidity ^0.8.0;


contract Complex {
    function doSomething(uint n) public {
        uint x = 1;
        bool f = false;
        do {
            f = true;
            x = x * n;
        } while (!f);
        x += 1;
        require(x > 0, "Test");
    }
}
