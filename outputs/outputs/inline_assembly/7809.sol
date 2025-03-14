pragma solidity ^0.8.0;
contract L14 {
    function multiply(uint x, uint y) public pure returns (uint) {
        return mul(x, y, 42);
    }
}
{% endhighlight %}

</details>

</details>
</details>
</details>
<br>

## <a name="solidity-gas">Solidity gas estimates: gasLimit</a>

<details>
  <summary>Show the contract in action</summary>

```solidity
contract Example {
    function callGas() returns (uint) {
        uint a = 2;
        uint result;
        (result, ) = address(this).call{value: a}(abi.encodeWithSignature("multiply(uint256,uint256)", a, a));
        return result;
    }
}
```

![gaslimit](/assets/img/posts/contracts/05_gas/gaslimit.png "gaslimit")

Note that gas estimates are limited to 2.2 billion in a day, but are not limited by gas expenditure or the block gas limit, which is what the "Estimate gas" button does actually.

</details>

## <a name="solidity-gas">Solidity gas estimates: gasPrice</a>

<details>
  <summary>Show the contract in action</summary>

```solidity
contract Example {
    function callGas() returns (uint) {
        uint a = 2;
        uint result;
        (result, ) = address(this).call{value: a}(abi.encodeWithSignature("multiply(uint256,uint256)", a, a));
        return result;
    }
}
```

![gasprice](/assets/img/posts/contracts/05_gas/gasprice.png "gasprice")

Gas price changes according to transaction fees. Higher gas prices indicate a higher transaction cost.

</details>
<br>

## <a name="solidity-gas">Solidity gas estimates: fallback</a>

You may find it useful to use a `fallback` function when writing smart-contract code. This enables us to easily write test-cases if we don’t have a specific method implemented for an abstract function with the return statement.

<details>
  <summary>Show the contract in action</summary>

```solidity

pragma solidity ^0.6.0;
contract MimicERC721Receiver {
