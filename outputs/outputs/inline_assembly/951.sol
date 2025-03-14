pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() internal {

        Incrementer.decrement_internal();
    }
    function increment() internal {

        Incrementer.decrement_internal();
    }
}

```
