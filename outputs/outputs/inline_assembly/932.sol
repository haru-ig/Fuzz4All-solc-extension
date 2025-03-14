pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() internal pure returns(uint) {
        Incrementer.increment();
        _increment = 1;
        return _increment;
    }
    uint _increment;
    function increment() public pure returns(uint) {
        Incrementer.increment();
        return _increment;
    }
}

```

<br>
<br>

<hr>

## [07 - Migrations](https:
