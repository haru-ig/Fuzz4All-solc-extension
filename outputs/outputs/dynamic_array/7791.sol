pragma solidity ^0.8.0;
contract Test10 {
    uint128[42] memory _value1;
    mapping (uint256 => uint128) public _value;
    uint256[42] memory _value11;
    uint256[42][42] memory _value1111;
    constructor()
        public
    {
        assign_mem(toint(1), 16, 0, true);
        assign_mem(toint(2), 8, 0, true);
        assign_mem(2, 8, 36, false);
        assign_mem(0, 8, 72, true);
        assign_mem(5, 8, 76, true);
        assign_value(toint(1), 8, 0, true);
    }
    function assign_mem(uint256 _v, uint256 _offset, uint256 _bits, bool _signed)
        internal pure
    {
        bytes memory b = new bytes(toint(2 ** (bits _signed  + 1)));
        for(uint256 i = 0; i < toint(_v); i++){
            _set_byte(_offset, i, _signed, b, _bits);
        }
    }
    function assign_value(uint256 _b, uint256 _offset, uint256 _bits, bool _signed)
        internal pure
    {
        _set_byte(_offset, _b, _signed, new bytes(5), _bits);
    }
    function toint(uint w) private pure returns(int) { return int(w); }
    function _set_byte(uint256 _offset, uint256 _byte, bool _signed, bytes memory _value, uint256 _bits)
        internal
    {
        uint256 i;
        uint256 end = toint(toint(_value.length) - toint(1));
        for(i = toint(end - 1); i >= 0; i--){
            if(i >= toint(_offset) && i < toint(_offset + toint(1 + toint(_bits)))){
                _value[_value.length - toint(1) + int(1 - toint(_signed)) - i] = int(1 - toint(_signed)) & toint(1));
                break;
            }
        }
    }
}
