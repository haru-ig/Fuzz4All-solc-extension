pragma solidity ^0.8.0;
contract SemanticallyEquivalent13 {
  uint constant constantValue = 1000;
  constructor () { uint _h = constantValue; uint _c; assembly {_c := constantValue } _c = constantValue; }
  function x(uint _h) public returns (uint) {
    uint _c;
    assembly { _c := constantValue }
    _c = constantValue * _c;
    return _c;
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent14{function x(uint _h, uint _c) public returns (uint) {
    _h = _h * _h;
    _c *= _h * _h;
    _c /= constantValue;
    _c *= _h * CONSTANT_VALUE;
    _c /= _h * _c;
    _c *= 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCBFBAAF981C9A2E5C966E726E5E995F725DCE2BC1E93113294D635723848F0D7EA1E6A461D1AB15FEE0A6D9EE5BF192E7F21E5FE04A8E7E70E5F6DE77B1A0CC2433D517A47E598DE46B591AB22B184A28AA37BEFCAD8410FED04EF9DEA96F17EC1E5099971638E6EF76A49219FC37C888594EADA7E4B4437E48FB325547A99EEBD2B5C6B6B5685755EB6A8784800000;
    _c /= _h * _h * CONSTANT_VALUE * CONSTANT_VALUE;
    _c /= _h * _h * _c;
    _c
