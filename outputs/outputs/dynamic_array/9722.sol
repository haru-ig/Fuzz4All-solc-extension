pragma solidity ^0.8.0;
contract SemanticallyEquiv {
  struct NonFungible {
     uint256 nonEquiv;
  }
  mapping(uint256=>NonFungible) private fungibleMap;
}

contract Demo is SemanticallyEquiv {
    function() external payable {
      uint256 newID = semanticallyEquiv.length + 1;
      semanticallyEquiv.length += 1;
      fungibleMap[newID].nonEquiv = 40;
    }
}
```

## Usage

```bash
<solidity.compile.options> -c demo.sol
```

## License

MIT
