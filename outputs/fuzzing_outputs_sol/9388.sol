pragma solidity ^0.8.0;
contract MutatingFallback6 {
  uint internal num1;
  modifier onlyFallback {
    require(msg.data.length == 0);
    _;
  }
  function mutate() public onlyFallback {
    num1 = num1 + 1;

    assert(num1 >= 2);
  }
}


pragma solidity ^0.8.0;
contract MutatingFallback1 {
  function mutate() nonpayable payable {}
  receive() payable {}
}
contract MutatingFallback2 {
  function mutate() payable {}
  receive() payable {}
}
contract MutatingFallback3 {
  function mutate() pure nonpayable {}
  receive() pure payable {}
}
