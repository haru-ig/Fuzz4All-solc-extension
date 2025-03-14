pragma solidity ^0.8.0;
contract Test17Nested {
    uint[] internal _mem;
    function f() public {
        _mem[0] = 13;
        _mem[1] = 17;
    }
}
```

{% include code/solidity.html title="Check your solution" highlight={`4` `5` `6` %}
