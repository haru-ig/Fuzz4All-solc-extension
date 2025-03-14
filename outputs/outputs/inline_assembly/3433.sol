pragma solidity ^0.8.0;
contract Mutable {
  uint public constant ZERO = 0;
  uint public value;
  constructor() public {}
  function setMutated (uint _value) public {
     value = ZERO;
   }
  function getMutated () public view returns (uint) {
     return value;
 }
  function set(uint _value) public {
       value = ZERO;
     value = _value;
  }
}


pragma solidity ^0.8.0;
contract Mutatable {
    event Set(uint indexed a);
    event Mutated();
    uint constant ZERO = 0;
    uint value;
    constructor() public {
        value = ZERO;
    }
    modifier onlySet (uint newValue) {
        assert(newValue!= ZERO);
        _;
    }
    function set(uint _value) public onlySet(_value) {
        value = _value;
    }
    function setMutated () public {
        emit Mutated();
    }
}
