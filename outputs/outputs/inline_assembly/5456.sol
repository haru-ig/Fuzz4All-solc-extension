pragma solidity ^0.8.0;
contract MutateWipeBc7 {
    uint public rBc7;
    function _next() public {
        uint _rBc7 = divRem(rBc7, 2) + 1;
        for (uint x; x < 20000; x++) {
          if (_rBc7 > 500) {
            break;
          } else {
            _rBc7 += 32;
          }
          uint _dummy;
        }
    }
    function divRem(uint a, uint b) private pure returns (uint x, uint y) {
        require(b!= 0);
        x = a / b;
        y = a % b;
    }
}
