pragma solidity ^0.8.0;
contract NonDeterministicContract {
    constructor() {
        require(msg.value % 10!= 0);
    }
    function nonDetFunction(uint256[] memory a) public view returns(uint256) {
        return 10 / (a.length + a[1]);
    }
}
```

Note that the `MutatingTest.sol` and `NonDeterministicTest.sol` contracts do not include tests (noted as *no assertions*). There is a prescribed strategy that every test should ensure no changes to its state while ensuring the correct behavior during execution. The compiler is responsible for ensuring that the expected behavior is not change during execution and that changes to state will not lead to undetected buggy behavior. An example:
```
pragma solidity 0.8.0;
contract MutatingTest {
    function mutatedFunction(uint256[] memory a) public pure {
        a[0]++;
    }
}
pragma solidity 0.8.0;
contract NonDeterministicTest {
    constructor() {
        require(msg.value % 10!= 0);
    }
    function nonDetFunction(uint256[] memory a) public view returns(uint256) {
        return 10 / (a.length + a[1]);
    }
}
```

If you encounter a bug, and need help figuring out how to fix it and/or finding the cause, please use the provided links to the bug report as well as to ask for help on the [Ethereum forums](https:
