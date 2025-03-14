pragma solidity ^0.8.0;
contract Mutator8 {
    uint[] public y;
    uint[] public z;
    uint[] public x;
    constructor () public {
        x= new uint[](2);
        y= new uint[](2);
        z= new uint[](2);
        x[0] = 0x234;
        x[1] = 0;
        y[0] = 1;
        y[1] = 0;
        z[0] = 1;
        z[1] = 0;
    }
    function set(uint[] calldata _values) external {
        for (uint i=0; i<2; i++) {
            z[i] = _values[i];
        }
    }
    function set2() external {
        uint[] memory _x = x; uint[] memory _y = y; uint[] memory _z = z;
        for(uint i=0; i<2; i++) {
          _z.push(1);
          x[1] = 0;
        }
        for(uint i=0; i < 2; i++) {
          x[1] = 0;
          x[1] = 0;
          x[1] = 0;
          z.push(1);
          y.push(0);
        }
    }
}
