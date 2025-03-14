pragma solidity ^0.8.0;
contract semanticallyequivalent_gen2
{
    function f() public pure returns (uint) {
        uint memory = 0;
        return 0;
    }
}
contract semanticallyequivalent_gen3
{
    function f() public pure {
        bytes memory = 0;
        return;
    }
}
contract semanticallyequivalent_gen4
{
    function f(uint i) public pure {
        return 0;
    }
}
contract semanticallyequivalent_gen5
{
    function f(bytes memory b) public pure {
        return;
    }
}
contract semanticallyequivalent_gen6
{
    function f(bytes memory ) public pure {}
}
contract semanticallyequivalent_gen7
{
    function f(bytes memory ) public pure {}
}
```

In the next page I will explain this function and in particular how it can be used.

4 - Solidity function modifiers
---------------------------------

The previous contract example used the `pure` modifier which is used for pure functions. This means that calling a pure function requires no gas to be consumed. In this case, you don't need to return anything, in this case the contract does not have a fallback function.

But what if the contract has a payable fallback function, and you want to execute a logic that depends on the ether transfer data? For this you can use the normal keyword `payable` in the function declaration and call the function with a modifier to allow the gas to be used to execute these dependencies.

The following contract modifies the semantics of our previous contract. It also provides more context about how modifiers work.

```solidity
pragma solidity <8.3.0;

contract fallback
{
    function f(uint amount)
        public pure validAmount(amount)
        payable
        {
            amount *= amount;
        }
    function validAmount(uint amount)
        public pure
        returns (bool)
        {
            if(amount > 15)
            {
                return true;
            }
        }
}
```

In the `validAmount` function, the modifier is applied. The keyword `pure` is used to make sure this function is pure. This modifier prevents the gas consumption in this function when called. The `payable` modifier tells the compiler the contract should send its gas.

The function call to `validAmount` will only go through the modifier, in order to be called in the standard contract, `fallback
