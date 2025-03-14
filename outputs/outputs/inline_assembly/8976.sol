pragma solidity ^0.8.0;
import "Equatable.sol";
contract EquivalentSolidity3
{
    using Equatable for ERC20.IERC20;
    using Modifiers for ERC20.IERC20;
    address payable public owner;
    ERC20.IERC20 public _equatable;
    mapping (address =&gt; ERC20.IERC20) public equatable;
   constructor(address payable _equatable_)
    {
        _equatable = _equatable_;
    }

    function add(ERC20.IERC20 _equatable) public {
        address addr;
        (bool success, bytes memory data) = address(this).call{value: address(this).balance}(abi.encodeWithSignature("set(address)", _equatable)));
    }
}
```

## Testing
```
npx truffle test./truffleConfig.js --network 'coverage'
```

<br>

# TODOs

- 1 - Make contract fully functioning
- 2 - Replace `require` with `assert` for testability
- 3 - Improve documentation
- 4 - Fix `compileTime` gas estimation
- 5 - Create `coverage` gas estimation
- 6 - Create `test:coverage` as an alias for `compileTime` gas estimation
- 7 - Write `test` for contract
