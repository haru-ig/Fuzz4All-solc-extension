pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Qc {
    uint constant Init = 17;
    uint _rBc;
    uint internal _rBc2;
    uint rBc3;
    uint _vBc;
    uint8 cBc;
    constructor () public {
        _rBc = _rBc + Init + 17;
        rBc3 = _rBc + Init + 17;
        _vBc = _vBc + 17;
        cBc = uint8(_vBc & 0xff) << 24 | _vBc & 0xfff;
        _rBc2 = rBc3 + 17;
        for (uint x = 0; x < 10000; x++) {
            uint rBc;
            _rBc = rBc + Init + 17;
        }
    }
    function get() public view returns (uint, uint, uint, uint8) {
        uint vBc;
        uint8 cBc;
        uint rBc;
        return (rBc, cBc, vBc, cBc);
    }
}
