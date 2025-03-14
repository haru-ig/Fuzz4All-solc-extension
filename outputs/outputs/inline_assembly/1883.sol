pragma solidity ^0.8.0;
contract newY {
    int constant internal x = 0;
    function func() public {
        int256 n;
        while (n >= 1) {
            x = x + n;
            n -= 1;
        }
    }
}
