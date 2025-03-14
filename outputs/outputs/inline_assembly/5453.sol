pragma solidity ^0.8.0;
contract MutateRimBc2 {
    uint public _rimBc2FromBc5;
    uint public _rimBc2FromRimBc5;
    function _next() public {
        uint _rimBc2FromBc5 = _rimBc2FromBc5;
        uint _rimBc2FromRimBc5 = _rimBc2FromRimBc5;
        for (uint x; x < 20000; x++) {
          if (_rimBc2FromBc5 < 20000 / 2) {
            uint _tmp = 20000 - x;
            _rimBc2FromBc5 += _tmp / 2;
            _rimBc2FromRimBc5 += _tmp % 2? 2 : _tmp;
          } else {
            break;
          }
          uint _dummy;
        }
        uint _tmp = _rimBc2FromBc5 / 2;
        _rimBc2FromBc5 = _rimBc2FromBc5 % 2? 2 : _tmp;
        uint _tmp2 = _rimBc2FromRimBc5 / 2;
        _rimBc2FromRimBc5 = _rimBc2FromRimBc5 % 2? _tmp2 : _tmp2;
    }
}
