pragma solidity ^0.8.0;
import "./test59.sol";
contract Test60 {
    constructor() public {
        test.x[0] = 1;
        test2.x[0] = 1;
    }
}

pragma solidity ^0.8.0;
contract Test61 {
  constructor() public {
    test.y = 1;
    test2.y = 1;
  }
}

pragma solidity ^0.8.0;
contract Test62 {
  struct TestElement {
    uint data;
  }
  TestElement testArray[100];
  function callStatic() public {
    uint data;
    for (uint i = 0; i < 100; i++) {
      data = testArray[i].data;
      assertEqual(data, 1);
    }
  }
}
