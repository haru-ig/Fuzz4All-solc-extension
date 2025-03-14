pragma solidity ^0.8.0;
contract Mutant
{
  constructor() public {}
  function m() public {
    assembly {
      let old_code := mload(0x40)
      mstore(old_code, 0xa0)
      mstore(0x0, add(old_code, 0x80))
      mstore(0x0, old_code)
    }
  }
  receive() external payable {}
}

```

## The 2019 Edition

We have now covered the basics of Solidity. For anyone interested in learning Solidity, we recommend this [introduction to Solidity](https:
<br>

Hopefully you have had fun using Solidity!<br><br>

Cheers! <NAME>
