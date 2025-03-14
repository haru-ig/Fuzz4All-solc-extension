pragma solidity ^0.8.0;
contract MutatingFallback10 {
  uint16 a;
  modifier onlyFallback {
    a = 300;
    require(a > 700);
    _;
  }
  constructor() {
    a = 300;
  }
  function mutate() public onlyFallback {
    a++;
    uint256 aCopy;
    assembly {
      aCopy := a
    }
    assert(aCopy == 701);
  }
}




pragma solidity ^0.8.0;
contract MutatingFallback11 {






  uint16 sumVar;

  function () external payable {
    uint16 sumVarCopy;

    assembly {
      sumVarCopy := sumVar
    }

    uint16 sumVar2 = 200;

    assembly {
      sumVarCopy := mul(add(sumVar2, sumVarCopy), 50)
    }

    assert(sumVarCopy == 60005);
  }
}
