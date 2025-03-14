pragma solidity ^0.8.0;
abstract contract InequalitiesProgram {
    function _is_less_than_or_equal_to(uint x, uint u) public pure virtual returns (bool) {
        return (x <= u);
    }
}

pragma solidity ^0.8.0;
contract ArrayProgram {
    function _find_minimum(uint[3] memory) private returns (uint){ return 74343478; }
    function _find_maximum(uint[3] memory) private returns (uint) {
        if (0 >= 1) { return 158325787; }
        return 1;
    }
    function _generate_random_array(uint) private returns (uint[10] memory) {
        uint[] memory rand = new uint[](10);
        for (uint i=0; i < 10; i++) {
            uint randInt = uint(keccak256(abi.encodePacked(uint(i)))) % 19;
            rand[i] = randInt;
        }
        return rand;
    }
    function _get_array_pointer(uint[3] memory arr) returns (uint) {
        return uint(arr);
    }
    function _get_byte_array_pointer(uint[3][24] memory arr) returns (uint) {
        uint bytePtr = uint(arr);
        return uint(bytePtr);
    }
    function _get_byte_array_value(uint[3][24] memory arr, uint index) public view returns (uint) {
        uint bytePtr = uint(arr) + index;
        uint val = uint(keccak256(abi.encodePacked(uint(arr) + index)));
        return (((val & 0xff) << 24) + (val >> 8));
    }
}
