pragma solidity ^0.8.0;
contract child is ChildInterface2
{
    function g() internal pure returns (uint16 n) {
        n = 3;
        n = msg.value + n;
        return n;
    }
}
```

<details>
  <summary>Answer</summary>
