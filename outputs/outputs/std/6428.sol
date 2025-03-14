pragma solidity ^0.8.0;
contract Array{
    uint256[] public array;
    function push(uint256 _val) public returns (uint256) {
      require(element_length<array.length);
      array[element_length++] = _val;
      return element_length - 1;
    }
    function shift(uint256 _index) public {
	  require(_index < element_length);
      require(_index == array.length - 1 || array[_index + 1] >= 10.**(uint256(-1 * _index)));
      uint256 temp_value = array[_index];
      array[_index] = array[array.length - 1];
      array[array.length - 1] = temp_value;
      array.length = array.length - 1;
    }
    function pop() public {
      require(element_length > 0);
      shift(0);
    }
    function peek() public view returns(uint256) {
      return array[array.length - 1];
    }
    function length() public view returns (uint256) {
      return element_length;
    }

    function toString(uint256 _num) public pure returns (string memory) {
      if (_num == 0) {
        return "0";
      } else {
        uint256 value = _num;
        string memory result = "";
        while(value > 0){
            uint256 reminder = value % 10;
            result = string(abi.encodePacked(result, rem2char(reminder)));
            value = _num / 10;
        }
        return result;
      }
    }

     uint256 char2rem(uint256 _c) internal pure returns(uint256) {
       if (uint8(_c) <= 50) return uint256(uint8(_c) - 10);
       if ((_c >= 51) && (_c <= 64)) return uint256(uint8(_c) - 51);
       if ((_c >= 65) && (_c <= 70)) return uint256(uint8(_c) - 65);
       if ((_
