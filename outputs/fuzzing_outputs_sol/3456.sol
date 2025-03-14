pragma solidity ^0.8.0;
contract Mutater {
    function callErc20Token() public pure {
        contract(address(tx.origin)).callWithoutFallback();
        contract(address(tx.origin)).callWithFallback();
    }
    function mutatorErc20Token() public pure {
        contract(address(0)).callWithoutFallback();
    }
}
```

## License
