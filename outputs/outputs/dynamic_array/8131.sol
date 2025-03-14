pragma solidity ^0.8.0;
contract Equivalent {
   mapping( uint => address ) public map;
   struct Struct {
     uint a;
    mapping(bytes32 => uint ) b;
   }
   Struct public structRef;
   uint public u = 0;
   function insert(uint _id,address _to) public {
       require(map[_id] == address(0));
       require(map[_id+1]);
       map[_to] = _id+1;
   }
}
contract CallDataWithSubstractedValues {
    address _owner;
    uint _value;
    constructor (string memory _owner) {
        owner = _owner;
    }
    function() public payable {
        _value = msg.value;
    }
    function owner() public constant returns (string memory) {
        return _owner;
    }
}
