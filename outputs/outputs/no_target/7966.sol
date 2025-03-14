pragma solidity ^0.8.0;
contract TestMutator8 {
    uint[] public x;
    uint[] public z;
    constructor () public {
        z= new uint[](2);
        z[0] = 1;
        z[1] = 0;
        x= new uint[](2);
        x[0] = 1;
        x[1] = 0;
    }
    function set(uint[] calldata _values) public nonpayable {
      uint _value = 1;
      for(bytes1 b : keccak256(abi.encode(_value))){
          emit b;
      }
      _values[0] = _value;
      emit _values;
    }
    function set2() external {
      uint[] memory _x = x; uint[] memory _z = z;
      uint _value = 0;
      for(uint i=0; i<2; i++) {
        _z[i] = 0;
        _value = _value + _value / (_value + 1);
      }
    }
}
