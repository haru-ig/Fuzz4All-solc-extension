pragma solidity ^0.8.0;
contract MutatedContract {
    address payable mutator;

    constructor (address payable _mutator) {
        mutator = _mutator;
    }

    function doSomething() {

        assembly {
            calldatacopy(mload(0), 200, 0)
            calldataload(0, 300)
        }


    }
}
```
