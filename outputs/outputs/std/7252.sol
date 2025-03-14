pragma solidity ^0.8.0;
contract Array {
  uint public size;
  uint public data [20];
  function push(uint num) public {
    size = size + 1;
    data [size] = num;
  }
  function pop() public returns (uint){
    size = size - 1;
    return data [size];
  }
}

pragma solidity ^0.8.0;
contract Map {

    address public owner;

    mapping(uint => uint) storage x;
    function set (uint key, uint value) public { x[key] = value; }
    function get (uint key) public view returns (uint) { return x[key]; }
    function setString (uint key, bytes32 value) public { x[key] = bytes32(uint(value)); }
    function getStrn (uint key) public view returns (bytes32) { return bytes32(uint(x[key])); }

}
