pragma solidity ^0.8.0;
contract TestMutator6 {
    uint[] public x;
    uint[] public z;
    constructor () public {
        x= new uint[](2);
        z= new uint[](2);
        x[0] = 0xdeada;
        x[1] = 0;
        z[0] = 1;
        z[1] = 0;
    }
    function set(uint[] calldata _values) external {
      for (uint i=0; i<2; i++) {
        x[i] = _values[i];
      }
    }
    function set2() external {
      uint[] memory _x = x; uint[] memory _z = z;
      for(uint i=0; i<2; i++) {
        x[i] = 1;
        _x[i+1] = 0;
        _x[i] = 0;
        _z[i+1] = 0;
        _z[i] = 1;
      }
      for(uint i=0; i < 2; i++) {
        x.push(1);
        z.push(1);
      }
    }
}
