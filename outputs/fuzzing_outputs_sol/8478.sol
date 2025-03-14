pragma solidity ^0.8.0;
contract CallerExample7 {
  function fallback(bytes calldata    ) { }
  receive() external payable { }
}

  ^Error: (72-87): Contract 'CallerExample6' is not contract compatible with the requested function signature at:
pragma solidity ^0.8.0;

  fallback (bytes calldata     ) { }
```
