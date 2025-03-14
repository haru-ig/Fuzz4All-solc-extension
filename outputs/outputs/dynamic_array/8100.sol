pragma solidity ^0.8.0;


contract MyStorageList {


    function putBytes(
        bytes storage _storage,
        uint _slot,
        bytes memory _data)
        internal {

        uint8 slot = _slot;
        uint8 offset = 0;


        if (_data[offset]!= bytes1(0)[0]) {
            _storeBytes(
                _storage,
                slot * 4 + offset + 1,
                uint256(bytes1(0)[_data[offset] - bytes1(0)]));
        }


        for (uint8 i = bytes1(0).length; i > 0; i--) {


            if (_data[offset - i]!= bytes1(0)[0]) {


                if(!(slot & 0xF) && _data[offset] > bytes1(0)[_data[offset - 1]]){
                    uint256 nextSlot = slot / 2 ** i;
                    _storeBytes(
                        _storage,
                        nextSlot * 4 + offset + 1,
                        (slot & 0xF) == 0xf || i == 1? _data[offset - 1] : _data[offset]);
                }
                _storeBytes(
                    _storage,
                    slot * 4 + offset + 1,
                    uint256(bytes1(0)[_data[offset] - bytes1(0)]));
            }
        }
    }


    function putUint(
        uint storage _storage,
        uint _slot,
        uint _value)
        internal {

        uint8 slot = _slot;
        uint8 offset = slot & 7;

        if (slot % 4 == 0) {


            if
