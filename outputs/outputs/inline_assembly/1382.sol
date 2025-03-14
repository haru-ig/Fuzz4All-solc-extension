pragma solidity ^0.8.0;
contract Mutant9k
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    x = a + _value;
    emit x(x);
    return x / value;
  }
}

```

## <a name="nextsteps"></a> Next steps

You can now use a mutant to check out how your program behaves when deployed on Ethereum. We learned how to deploy and interact with a smart contract deployed in EVM.  Please make sure you have read [How to call Solidity smart contracts from a contract](https:

<!-- LINKS -->
[mutant]:./media/Solidity-mutant.png
[install-solidity]: https:
[install-remix]: https:
[github-actions]: https:
[solidity-docs]: https:
