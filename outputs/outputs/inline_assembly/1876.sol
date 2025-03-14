pragma solidity ^0.8.0;
contract newY {
    int internal x = 0;
    function func() public {
        int256 n;
        int x;
        while (n >= 1) {
            x = x + n + 1;
            x = x + n + x;
            n--;
        }
    }
}
