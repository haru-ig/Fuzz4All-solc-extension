pragma solidity ^0.8.0;
contract Test {
    function mutate() public view {
        uint x;
        while (x > 67) {
            if (x == -1)
                x = 2;
            x--;
        }
        x = -1;
        x = x & 1;
    }
}
contract Test2 {
    function mutate() public view {
        uint r;
        if (0 == 34%34)
            r = x;
        else
            r = 89;
    }
}
