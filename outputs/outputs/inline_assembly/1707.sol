pragma solidity ^0.8.0;
contract MutatorS11 {
uint256 constant ONE = 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 c = ONE;
  function mutate() public {
    emit MyEvent1(ONE);
    c += ONE_PLUS;
  }
  event MyEvent1(uint num);
}

pragma solidity ^0.8.0;
contract MutatorS12 {
uint256 constant ONE = 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 c = ONE;
  function mutate() public {
    emit MyEvent2(ONE, ONE);
    c += ONE_PLUS;
  }
  event MyEvent2(uint num1, uint num2);
}

pragma solidity ^0.8.0;
contract MutatorS13 {
uint256 constant ONE = 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 c = ONE;
  function mutate(uint256 _arg0) public {
    uint256 num3;
    assembly {
      switch add(add(add(sub(mul(mload(0x43), 0x10))
              , _arg0), 0x38a0)
       , 1)
      )
      case add(add(add(_arg0, 0x3900)
       , 0x15)
      , 0x15)
       13)
       17)
    {

      add(c, 1)
      add(num3, 1)
      break;
    }
  }
}
