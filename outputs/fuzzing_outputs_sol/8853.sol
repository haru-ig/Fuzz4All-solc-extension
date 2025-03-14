pragma solidity ^0.8.0;
contract CallerNoFallbackTest {
    address public test;
    constructor() {
        test = payable(msg.sender);
    }
    fallback() {
        require(false);
    }
}
```

## Contract with Fallback Function

```solidity

pragma solidity ^0.8.0;
contract TestContractWithFallback {
    address payable public test;
    constructor() {
        test = payable(msg.sender);
    }
    receive() external payable {}
    function withNoFallbackFunction() {
        require(false);
    }
    function withFallbackFunction() external {
        require(false);
    }
}
```

## Contract with Receive Function

```solidity

pragma solidity ^0.8.0;
contract TestContractWithReceive {
    address payable public test;
    constructor() {
        test = payable(msg.sender);
    }
    fallback() {
        require(false);
    }
    receive() payable external {}
}
```

## Contract with Fallback & Receive Function

```solidity

pragma solidity ^0.8.0;
contract FallbackAndReceive {
    address payable public test;
    constructor() {
        test = payable(msg.sender);
    }
    function withNoFallbackFunction() {
        require(false);
    }
    function withFallbackAndReceiveFunction() external payable {
        require(false);
    }
}
```
