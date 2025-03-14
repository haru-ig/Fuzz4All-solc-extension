pragma solidity ^0.8.0;
contract CallerMutated {
    uint public x = 2;
    function lowLevel() public {
        x++;

        uint t1 = x;
        x--;

        x++;
        x++;
    }
}
