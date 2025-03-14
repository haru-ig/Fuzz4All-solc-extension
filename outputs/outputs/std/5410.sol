pragma solidity ^0.8.0;
contract Mutate13 {
    bytes3[] array;
    mapping(uint => bytes3) map;
    constructor() {
        array = new bytes3[](1);
        map = new mapping(uint => bytes3){
            0x01: "key01",
            0x02: "key02"
        };
    }
    function add(uint _x) public { array.push(_x % 3 < 1? "" :  bytes3(uint(_x % 3))); }
    function sub(uint _x) public {
      if (!array[_x % array.length] == "" || array.length == 1) array[0] = "";
      else delete array[_x % array.length];
    }
    function get(uint _x) public view returns (bytes3) {
      return array[_x % array.length];
    }
    function set(uint _x, bytes3 _value) public { array[_x % array.length] = _value % 3 < 1? "" :  bytes3(uint(_x % 3))); }
}
