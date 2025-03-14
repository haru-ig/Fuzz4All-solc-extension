pragma solidity ^0.8.0;
contract Mutator8 {
    uint[] public x;
    uint[] public y;
    uint[] public z;
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
          _y[i+1] = 0;
          _y[i] = 1;
          for(uint j=0; j < 2; j++) {
            _z[i] = 1;
            _x.push(0);
            z.push(0);
            x[1]++;
            x[0]++;
            x[0]++;
            for(uint k=0; k < 2; k++) {
              _x[i] = x[i] + z.push(0);
              y.push(x[i] - z.push(0));
              _y[i+1] = x.push(0);
            }
          }
        }
    }
}
