pragma solidity ^0.8.0;
contract Mutant
{
  function attack() public payable {}
}

```
```solidity

pragma solidity ^0.8.0;
contract Mutant
{
    constructor() public {}
    receive() external payable {}
    function attack() public payable {}
}

pragma solidity ^0.8.0;
contract Mutant
{
    constructor() public {}
    receive() external payable {}
}
```
