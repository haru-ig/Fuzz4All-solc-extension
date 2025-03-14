pragma solidity ^0.8.0;
contract Mutator8 {
    constructor () public {
        uint[] memory _x = x; uint[] memory _y = y; uint[] memory _z = z;
        for(uint i=0; i<2; i++) {
          z[i] = 1;
          _z[i+1] = 0;
          _z[i] = 0;
          _y[i+1] = 0;
          _y[i] = 1;
        }
        for(uint i=0; i < 2; i++) {
          z.push(1);
          x[1] = 0;
        }
    }
    function set(uint[] calldata _values) public {
        for (uint i=0; i<2; i++) {
            z[i] = _values[i];
        }
    }
}
