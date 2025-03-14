pragma solidity ^0.8.0;
contract ContractWithModifier {
  uint16 internal a;
  function contractModifierFunction(uint16 num) public modifier {
    a = num;
    _;
  }
  function changeNum() public contractModifierFunction(10) {
    assert(a == 10);
  }
  function increaseNum() public contractModifierFunction(100) {
    a++;

    assert(a == 310);
    contractModifierFunction(500);

  }
}


pragma solidity ^0.8.0;
contract MutatingFallbackExample {
  uint16 internal a;
  uint32 internal b;
  uint256 internal c;
  function contractMutation(uint256 num) public {
    a = num;
    b = 1;
    c = 20;
  }
  function mutate() public {
    uint16 num = 300;
    contractMutation(num);
    num++;
    assert(a == 300);
    assert(b == 2);
    assert(c == 23);
  }
}
