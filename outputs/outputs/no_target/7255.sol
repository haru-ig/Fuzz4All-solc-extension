pragma solidity ^0.8.0;
contract AbiCoderCounter {
    uint constant internal max = 5;



    function setX(uint x) public {
        _setX(x);
    }


    function _setX(uint y) private {
        _checkAndIncrement(y);
    }
    function _setY(uint x, uint y) private {
        _checkAndIncrement(y);
    }


    function _checkAndIncrement(uint y) private pure {
        require(x < max, 'Error: setPosition: x overflows');
        x++;
    }
}
{% endhighlight %}



2. [Create a contract that makes a function call using a contract address in Solidity v0.8.0 and ABI v2]({{site.baseurl}}/2022/02/27/abi-new-abi-v2-in-v08/)

This example shows how a contract can modify some state variables according to the ABI that is provided by another contract.


3. [Create a contract with a custom gas limit in Solidity v0.8.0]({{site.baseurl}}/2022/02/27/abi-new-abi-gaslimit-in-v08/)

The gas limit property allows contracts to explicitly require extra gas to succeed while also avoiding out of gas conditions.

This example shows a contract that increases its gas limit.

## Breaking changes and future features

The following are some key breaking changes and future features in ABI v2 when we update Ethereum.

1. An API to use by the ABI coder was changed from its old name to ABI. For example **toNumber(uint8)** is now **to_number(uint8)$.**

The ABI object can use the original names for both functions and parameters, allowing us to access internal and public methods on both objects. This change did not occur in Solidity 0.8.0, so you should not rely on this method.

2. Implicit conversions are restricted to address, when a signed or unsigned number should be converted to an address.

3. A pragma solidity function does not automatically activate ABI coder v2 for other contract-level code, which allows us to set parameters to be non-constant. We can also disable explicit conversions on constants.

## Frequently asked questions
