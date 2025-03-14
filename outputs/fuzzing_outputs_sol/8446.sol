pragma solidity ^0.8.0;
contract CallerExample {
  function callerReturnTrue() public pure returns(bool) {
    return true;
  }
}

```
{
  "errors": {
    "CallerExample::callerReturnTrue": "Fallback function does not return a bool;"
  },
  "usedContract": "Caller",
  "usedMethod": "callerReturnTrue",
  "usedInterface": "Fallback",
  "usedContractID": "0x5D086C9DC8715EC0a8A44a0b79049d671C47A689",
  "usedFunctionID": "0x0000000000000000000000000000000000000000000000000000000000000",
  "usedContractName": "Caller",
  "usedMethodName": "callerReturnTrue",
  "usedInterfaceName": "Fallback"
}
```
