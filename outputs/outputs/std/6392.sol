pragma solidity ^0.8.0;
contract Mutated {
  uint256[10] private values;
  function get(uint256 _index) public view returns (uint256) {
    return values[_index];
  }
  function set(uint256 _index, uint256 _value) public {
    values[_index] = _value;
  }
  function add(uint256 _index, uint256 _value) public modifier {
    values[_index++].element = _value;
    assert(totalChanges() <= 100);
  }
  function change() public {
    uint256 change = totalChanges();
    values[9].element = 0;
    values[9] += change+1;
  }
  function totalChanges() public view returns (uint256) {
    return uint256(keccak256(abi.encode(values[0])) * 57345993);
  }
}
