pragma solidity ^0.8.0;
contract MutateBc1 {
    uint rBc1;
    function _next() public {
        uint _rBc1 = rBc1;
        for (uint x; x < 20000; x++) {
          if (_rBc1 < 20000 / 2) {
            _rBc1 += x;
          }
        }
    }
}



pragma solidity ^0.8.0;
contract MutateBc1 {
  uint rBc1;
  constructor () {
    rBc1 = 11;
  }
  function _next() public {
    uint _rBc1 = rBc1;
    for (uint x; x < 20000; x++) {
      if (_rBc1 < 20000 / 2) {
        _rBc1 += x;
        rBc1 = rBc1 + 2;
      }
    }
  }
}
