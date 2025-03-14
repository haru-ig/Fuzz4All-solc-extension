pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback5 {
    constructor() payable {}
    fallback(uint x) external payable {}
}


Contract CallFallbackFunctionTwoPlusFallback5InstanceOne is CallFallbackFunctionTwoPlusFallback5 {
    function CallFallbackFunctionTwoPlusFallback5InstanceOne() {
    }
}
address CallFallbackFunctionTwoPlusFallback5InstanceOneAddress = CallFallbackFunctionTwoPlusFallback5InstanceOne.deploy().deployTransaction.to;
Address.sendValue(CallFallbackFunctionTwoPlusFallback5InstanceOneAddress, 10);

contract CallFallbackFunctionTwoPlusFallback6{
    constructor() {}
    fallback() public {}
}

Contract CallFallbackFunctionTwoPlusFallback6InstanceTwoIsHidden is CallFallbackFunctionTwoPlusFallback6{
    function CallFallbackFunctionTwoPlusFallback6InstanceTwoIsHidden() public {
    }
}
address CallFallbackFunctionTwoPlusFallback6instanceTwoHidesAddress = CallFallbackFunctionTwoPlusFallback6InstanceTwoIsHidden.contractAddress;
address CallFallbackFunctionTwoPlusFallback6InstanceTwoShowsAddress = CallFallbackFunctionTwoPlusFallback6InstanceTwoIsHidden.address;
address CallFallbackFunctionTwoPlusFallback6InstanceTwoIsHiddenInstanceAddress = CallFallbackFunctionTwoPlusFallback6InstanceTwoIsHidden.contractInstanceAddress;

pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback7
{
    constructor() payable {}
    fallback private () public {}
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback8 {
    constructor() payable {}
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback9 {
    constructor() payable {}
}
contract CallFallbackFunctionTwoPlusFallback8InstanceOneToTwo = CallFallbackFunctionTwoPlusFallback8.deploy().deployTransaction.to;
/* you can send Ether to that contract, which will cause CallFallbackFunctionTwoPlusFallback8 to throw an exception.
You can then modify A.sol to have a payable fallback function, which should be
