pragma solidity ^0.8.0;
contract Receiver {
  uint256 public expectedValue;
  uint256 public value;
  constructor(uint256 _expectedValue, uint256 _value) public {
    expectedValue = _expectedValue;
    value = _value;
  }
}
contract Test {
  uint256 public immutable constant VALUE = 0;
  uint256 public immutable constant FAILURE = ~uint256(0);
  uint256 public constant SUCCESS = uint256(1);
  address public immutable owner;
  struct State {
    uint256 a;
    uint256 b;
  }
  state State;

  constructor() owner {
    State = State({
      a: 1,
      b: 2
    });
  }

  function test1(uint256 a) external {
    uint256 res;
    (res, State.a) = Mutator.increment(a);
    if (res!= SUCCESS) {
      revert();
    }
    (res, State.b) = Mutator.increment(STATE.b);
    if (res!= SUCCESS) {
      revert();
    }
    if (STATE.a!= VALUE + stepValue + lastValue * 2) {
      revert();
    }
    if (lastValue == VALUE + stepValue * 3 + firstValue * 2) {
      revert();
    }
  }

  function test2(uint256 a) external returns (uint256) {
    uint256 res;
    (res, State.a) = Mutator.increment(a);
    if (res!= FAILURE) {
      revert();
    }
    (res, State.b) = Mutator.increment(STATE.b);
    if (res!= FAILURE) {
      revert();
    }
    if (STATE.a!= VALUE + stepValue + lastValue * 2) {
      revert();
    }
    if (lastValue == VALUE + stepValue + firstValue * 2) {
      revert();
    }
    return SUCCESS
  }

  function test3(uint256 a) external {
    require(State.a == SUCCESS && State.b == FAILURE);
    (, State.a) = Mutator.increment(a);
    (, State.b) = Mutator.increment(STATE.b);
    require(State.a == SUCCESS && State.b == FAILURE);
  }

  function test4() public {
    bytes memory a;
    (, State.a) = Mutator.increment(a);
    require(
      SUCCESS == Mutator.increment(
