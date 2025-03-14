pragma solidity ^0.8.0;
uint public getMem() public pure {
    uint a = 5;
    return a + 1;
}
contract C{
    uint[] x;
    function f() public {
        x[0] = getMem();
        x[x.length - 1] = getMem();
        x.length += 1;

        x.length += 1;
    }
}

```
## Puzzle
