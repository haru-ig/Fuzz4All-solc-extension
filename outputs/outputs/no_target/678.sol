pragma solidity ^0.8.0;
contract A {
    uint256 private _value = 0;
    function get(uint256 offset) public view returns (uint256) {
      return _value[offset];
    }
    function set(uint256 offset, uint256 newValue) public {
      _value[offset] = newValue;
    }
    function add(uint256 offset, uint256 newValue) public {
      set(offset, _value[offset] + newValue);
    }
    function sub(uint256 offset, uint256 newValue) public {
      set(offset, _value[offset] - newValue);
    }
}

pragma solidity ^0.8.0;
contract B {
    uint256 private _value = 0;
    function add(uint256 offset) public {
      set(offset, _value[offset] + 1);
      set(offset, _value[offset]);
    }
    function set(uint256 offset, uint256 newValue) public {
      _value[offset] = newValue;
    }
    function get(uint256 offset) public view returns (uint256) {
      return _value[offset];
    }
}
