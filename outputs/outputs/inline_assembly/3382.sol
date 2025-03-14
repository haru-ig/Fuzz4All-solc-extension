pragma solidity ^0.8.0;
contract Mutability {
  uint public constant ZERO = 0;
  uint public _value;
  constructor () {
    _value = ZERO;
  }
  function setValue (uint _value) public {
    _value = _value;
  }
}
contract Immutable {
  uint public constant ZERO = 0;
  constructor (uint _value) {
    value = _value;
  }
  uint public value;
}
contract MutabilityInlined {
  uint public constant ZERO = 0;
  constructor () {
    value = ZERO;
  }
  function setValue (uint _value) public {
    value = _value;
  }
}
contract ImmutableInlined {
  uint public constant ZERO = 0;
  uint public _value;
  constructor () {
    _value = ZERO;
  }
  uint public value;
}
contract MutabilityMutable {
  uint public constant ZERO = 0;
  uint public value;
  constructor () {
    value = ZERO;
  }
  function setValue (uint _value) public {
    value = _value;
  }
}
contract ImmutableMutable {
  uint public constant ZERO = 0;
  uint public value;
  constructor (uint _value) {
    value = _value;
  }
  uint public constant constantValue = 1000;
}
contract MutabilityInlinedMutable {
  uint public constant ZERO = 0;
  uint public const value;
  constructor () {
    value = ZERO;
  }
  function setValue (uint _value) public {
    value = _value;
  }
}
contract ImmutableInlinedMutable {
  uint public constant ZERO = 0;
  uint public value;
  uint public const constantValue = 1000;
  constructor () {
    value = ZERO;
  }
}
contract MutabilityMutableInlined {
  uint public constant ZERO = 0;
  uint public value;
  uint public const constantValue = 1000;
  constructor () {
    value = ZERO;
  }
  modifier mutatesValue {
    value = value + 1;
    _;
  }
}
contract ImmutableMutableInlined {

  uint public constant ZERO = 0;
  uint public value;
  uint public const constantValue = 1000;
  constructor () {
    value = ZERO;
  }
  modifier inlinesValue {
    value = value + constantValue;
    _;
  }
}
contract MutabilityMutableInlinedMutable {

  uint public constant ZERO = 0;
  uint public value;
  uint public const constantValue = 1000;
  constructor () {
    value = ZERO;
  }
  modifier firstModifier {
    revert();
    _;
  }
  modifier secondModifier {
    revert();
    _;
  }
  modifier inlinesValue {
