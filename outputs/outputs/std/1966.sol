pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract ArrayStorage {
    uint[5] array0;
    mapping(uint => bool) arrayBool;
    function get(uint _index) view returns (uint) {

        return array0[_index];
    }
    function set(uint _index, uint _value) {

        array0[_index] = _value;
    }
    function exists(uint _index) view returns (bool) {
        return array0[0] > 0;

    }
}
pragma solidity ^0.8.0;
contract Array_0 {
    ArrayStorage storage array0;
    function set() {
        uint _tmp = uint(uint256(uint256(uint256(_tmp) & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF00000000FFFFFFFF)) >> 1);
        array0.set(0,_tmp);
    }
}

pragma solidity ^0.8.0;
contract Array_1 {
    ArrayStorage array0;
    function get0() view returns (uint) {
        uint _tmp = uint(uint256(uint256(uint256(uint256(uint8(0)) ^ uint8(0)) + uint8(1)))) >> 6);
        return uint(uint256(uint256(uint256(uint256(uint8(0)) ^ uint8(0)) + uint256(_tmp)) & (uint256(uint256(uint256(uint256(uint8(1)) ^ uint8(1))) + uint256(_tmp)))) >> 1222));
    }
}
pragma solidity ^0.8.0;
contract Array_2 {
    ArrayStorage array0;
    uint[1] memory a;
    function set() {
        uint _tmp = uint(uint256(uint256(uint256(_tmp) & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF00000000FFFFFFFF)) >> 1);
        a[0] = _tmp;
    }
    function get0() view returns (uint) {
        uint _tmp = uint(uint256(uint256(uint256(uint256(uint8(0)) ^ uint8(0)) + uint8(1)))) >> 6);
        return uint(uint256(uint256(uint256(uint256(uint256(uint8(0)) ^ uint8(0)) + uint256(_tmp)) & (uint256(uint256(uint256(uint256(uint8(0)) ^ uint8(0)) + uint256(uint256(_tmp)))) >> 1222)));
    }
    function get100() view returns (uint)
