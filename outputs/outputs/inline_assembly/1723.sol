pragma solidity ^0.8.0;
contract MutatorS14 {
uint256 constant ONE = 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant SIX = 6;
uint256 constant ONE_PLUS_SIX = ONE_PLUS * SIX;
uint256 constant SIZE = ONE_PLUS_SIX + 1;
uint256 c = ONE_PLUS_SIX;
  function mutate() public {
    c = c + SIX + ONE_PLUS;
  }
}

pragma solidity ^0.8.0;
contract MutatorS14Tester {
  MutatorS14 testContract;

  constructor() public {
    testContract = new MutatorS14();
  }



  function testConstantInitializer(uint256 x) public {
    if (testContract.constantInitializer() == x) {
      assert(true);
    } else {
      assert(false);
    }
  }

  function testMutate(uint256 x) public {
    testContract.mutate();
    if (testContract.SIZE == x) {
      assert(true);
    } else {

      assert(false);
    }
  }
}
