pragma solidity ^0.8.0;
contract Test6 {
    uint8 _mem;
    uint8[7] _value;
    constructor(uint8 mem)
        public
    {
        assembly {

            mstore(mem, _value)
        }
        _mem = _value[6];
    }
}
