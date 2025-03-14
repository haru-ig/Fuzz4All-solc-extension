pragma solidity ^0.8.0;
contract MutatedMutatedMutated {
    function balance() public view returns (uint) {
        uint v = _immutableValue();
        uint w = 0;
        uint x = 0;
        uint y = mutates.f3(v);
        uint z = mutates.f3(uint(x));
        uint aa = mutates.f3(w);
        uint bb = mutates.f3(uint(y));
        uint cc = mutates.f3(z);
        uint dd = mutates.f3(uint(aa));
        uint ee = mutates.f3(bb);
        uint ff = mutates.f3(uint(cc));
        uint gg = mutates.f3(dd);
        uint hh = mutates.f3(uint(ee));
        uint ii = mutates.f3(ff);
        uint kk = mutates.f3(gg);
        uint ll = mutates.f3(hh);
        uint mm = mutates.f3(uint(ii));
        return _previousValue + _previousValue + _previousValue + _previousValue + _previousValue
            + _previousValue + _previousValue + _previousValue + _previousValue + _previousValue + _previousValue
            + _previousValue + _previousValue + _previousValue + _previousValue + _previousValue;
    }
    function mutates_f3(uint v) public pure returns (uint w) {
        return v;
    }
    function _immutableValue() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previousValue;
}
