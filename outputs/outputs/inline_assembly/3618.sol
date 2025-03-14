pragma solidity ^0.8.0;
contract SquashingMutatesGGenerationUsingYul {
  address public a;
  address public b;
  address public c;
  uint public g;
  uint public r;
  constructor() {
    r = 2;
    a = address(b);
    g = 3;
    a = address(c);
    a = address(d);
    a = a;
    a = a;
    a = a;
    d = a;
    a = address(e);
    b = c;
    b = e;
    g = 4;
    c = c;
  }
}


contract Tests {
    function testEqualSquashGenerationsUsingYulWithSemantics() public {
        SemanticallyEqualSquashGenerationsUsingYulWithSemantics test1;
        test1.checkTest();
        SemanticallyEqualSquashGenerationsUsingYulWithSemantics test2 = test1;
        test1 = test2;
        test1.checkTest();
    }

  function testSquashingMutatesGGenerationUsingYul() public {
        SquashingMutatesGGenerationUsingYul test1;
        test1.checkTest();
        SquashingMutatesGGenerationUsingYul test2 = test1;
        test1 = test2;
        test1.checkTest();
  }

}
