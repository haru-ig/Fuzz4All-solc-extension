pragma solidity ^0.8.0;
library MyLibrary {
  uint constant public SOME_CONST = 2323232323;
  uint constant public SOME_CONST2 = 2111111111;
  uint constant private SOME_CONST3 = 255;
  function getSomeConst() public returns (uint) {
    return SOME_CONST;
  }
  function getSomeConst2() public returns (uint) {
    return SOME_CONST2;
  }
  function getSomeConst3() public returns (uint) {
    return SOME_CONST3;
  }
}
contract MyContract {
  using MyLibrary for uint;
  uint constant public SOME_CONST = 321;
  event MyEvent(uint indexed a);
  function modSome() public {
    SOME_CONST *= SOME_CONST + 342323433;
    emit MyEvent(uint(MyLibrary.getSomeConst()));
  }
}
contract MyContractsManager {
  address public contractAddr;
  constructor(address _contractAddr){
    contractAddr = _contractAddr;
  }
  function modSomeContract() public {
    address newContractAddress = contractAddress;
    (bool success, ) = newContractAddress.call{value: 123}(abi.encodeWithSignature("modSome"));
    require(success);
  }
}

pragma solidity ^0.8.0;
contract MyContract {
  constructor() {
    uint localVar1;
  }

  function modSome() public {
    uint localVar1;


    uint(localVar1) *= 7 ** 23;
  }
}
```
