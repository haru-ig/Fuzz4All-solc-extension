pragma solidity ^0.8.0;
contract Test {
    mapping (uint => uint256) internal state;
    function set(uint key, uint256 value) public {
      state[key] = value;
    }
    function get() public view returns (uint256) {
      return state[0];
    }
}
contract Test {
    uint256 constant x = 1;
    uint internal data;
    function set() public {
      data = x;
    }
    function get() public view returns (uint256) {
      return data;
    }
}
