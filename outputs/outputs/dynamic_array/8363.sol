pragma solidity ^0.8.0;
contract Solidity8To14b {
    uint8 public immutable storageArrayA;
    uint8 public storageArrayB;
    uint8 public immutable memoryArrayA;
}
```

## Compiler Errors
Error | Message
----------- | -------------
E106 | Invalid type annotation
E119 | An expression must contain an identifier
E364 | Cannot resolve import identifier '<importid>' - did you mean: <ident>
E770 | Identifier '<ident>' is not of type '<type>', it has type '<type>' instead
