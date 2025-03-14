pragma solidity ^0.8.0;
contract ModifierTwo {
    function write() public {
        return;
    }
}
contract ContractWithFallback {

    Modifier modifierOne() public {
        return;
    }

    function () public payable {
        return;
    }

    receive() public payable {
        return;
    }

    function executeContractWithFallback(address contractAddress, modifier modifierOne, modifier modifierTwo) public {
        require(modifierOne, "Must call with modifier");
        ModifierThree(contractAddress).onlyUseInterfaceOrCallAndIgnore.method();
        require(modifierTwo, "Must call with modifier");
        ModifierFour(contractAddress).onlyUseInterfaceOrCallAndIgnore.method();
    }
}

contract ModifyingContractWithFallback is ContractWithFallback {

    Modifier modifierThree(address contractAddress) public {
        return;
    }
    modifierThree(address contractAddress) public {
        return;
    }
    function onlyUseInterfaceOrCallAndIgnore(modifier x, modifier y, modifier z) public {}
    function onlyUseInterfaceOrCallAndIgnore.method() public {}
    function onlyUseInterfaceOrCallAndIgnore.methodWithModifier() public {}

    modifier callModifier(address contractAddress) public {
        return;
    }
    function onlyUseCallOrIgnore(modifier z) public {}
    function onlyUseCallOrIgnore.method() public {}
}
```

## Appendix A
## Additional information
