pragma solidity ^0.8.0;
contract TestMutator {
 bool condition;
 contract testMutator {
      uint40 value;
      contract TestMutator {
          uint40 set(uint40 _value) public returns (uint40) {
              condition = true;
              value = _value;
              return value;
          }
      }
    }
    function set() public returns (uint40) {
        assert(condition);
        uint40 _value;
        if (condition) {
            _value = testMutator.set(10);
        }
        else {
            _value = 20;
        }
        return _value;
    }
}
