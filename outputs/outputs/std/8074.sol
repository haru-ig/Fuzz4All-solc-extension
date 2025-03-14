pragma solidity ^0.8.0;
contract ArrayMutations {
    uint256[] array;
    bytes32 constant EMPTY_HASH = 0x00;
    function initializeWith(uint256 _value) public {
        uint256[] memory a = new uint256[](10);
        a[0] = _value;
        a[1] = a[2] = a[3] = 0x69;
        array = a;
    }
    function set_0_255_54(uint256 _value1) public {
        uint256 array_ref;
        array_ref = 1;
        array[array_ref] = _value1;
    }
    function set_0_7_09(uint256 _value1) public {
        uint256 _low_order = 9;
        uint256 _high_order = 0x80;
        uint256 array_ref;

        array_ref = 6;
        array[array_ref] = _value1;
        array_ref = 7;
        array[array_ref] = _value1 << 6;
        array_ref = 0;
        array[array_ref] = (_low_order << 5) ** 2;
        array_ref = 1;
        array[array_ref] = _value1 >> _high_order;
        array_ref = 2;
        _high_order = _high_order << 20;
        uint256 _high_half = _high_order >> 8;
        array[array_ref] = (_high_half << 5) >> 8;
    }
    function append(uint256 _value1) public {
        array[array.length] = _value1;
        uint256 _high_half = 0x4008000000000000000;
        array[ array.length - 1 ] += _value1 << 2;
        array[ array.length - 1 ] += _high_half;
        array[ array.length - 1 ] += array[5];
    }
    function remove() public {
        array = array.filter(function(uint256 item) { return item!= 0; });
    }
    function remove1(uint8 _) public {
        for(uint i = 0; i < array.length; i++) {
            if (i > array.length - 1 - _1) {
                uint256 last_removed_value = array[i];
                array[i] = 0;
            }
        }
    }
    function remove2(uint8 _1) public {
        for(uint i = 0; i < array.length; i++) {
            uint256 last_index_remaining_value = array[i];
            uint256 last
