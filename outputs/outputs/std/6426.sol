pragma solidity ^0.8.0;
contract Array {
  constructor(uint8 _capacity) public{
    uint256[] memory init_element;
    for(uint8 i = 0; i < _capacity; i++)
      init_element.push(uint256(i));
  }
  function length_get(uint256[] memory _e) public view returns (uint256){
    assert(_e.length > 0);
    return _e.length;
  }
  function data_get(uint256[] memory _e,uint256 idx_get) public view returns (uint256){
    assert(_e.length > 0);
    assert(_e.length >= idx_get);
    return _e[idx_get];
  }
  function length_set(uint256 [] memory _e, uint256 length_set) public returns (uint256 new_length_set){
    assert(_e.length <= length_set);
    for(uint256 i = _e.length; i < length_set; i++)
      _e.push(uint256(0));
    new_length_set = length_set;
  }
}
