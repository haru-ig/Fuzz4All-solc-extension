pragma solidity ^0.8.0;
contract newY {
    int constant internal x = 0;
    function func() public pure {
        uint256 max = uint256(1);
        uint256 x;
        do {
            x = x + max;
            x = x + max;
            max--;
    } while (x is not 0);
}

```
