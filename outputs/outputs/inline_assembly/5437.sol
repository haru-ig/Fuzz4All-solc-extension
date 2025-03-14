pragma solidity ^0.8.0;
contract MutateBc2 {
    uint _rBc2;
    function _next() public {
        uint _rBc2;
        for (uint x; x < 20000; x++) {
          _rBc2 = addition(0, _rBc2);

          break;
        }
    }

    uint addition(uint x, uint y) internal pure returns (uint) {
        uint z = x + y;
        uint p = 3 * (z / 4 - z / 2);
        uint a = z & 3;
        if (a == 1) return (-p) | x;
        return p;
    }
}


contract Demo {
    uint _rBc3;
    uint _rBc2;
    constructor() public {
        _next();

        _rBc3 = addition(0, 0);

        _next();
    }

    uint addition(uint x, uint y) public pure returns (uint z) {
        z = x + y;
        uint p = 3 * (z / 4 - z / 2);
        uint a = z & 3;
        if (a == 1) return (-p) | x;
        return p;
    }

    function _next() internal {


        _next();
    }
}
