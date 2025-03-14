pragma solidity ^0.8.0;
abstract contract MutateProgram {
    function min_uint(uint x) public pure returns (uint);
}

pragma solidity ^0.8.0;
contract Mineable {
    function mine() public pure {
        uint random = uint(keccak256(abi.encode(block.difficulty)));
        uint x;
        while (!Minable.mining(block.number - 3) || (block.timestamp >= mineable(random + 1))) {
            x = uint(abi.encodePacked(x, random));
            x = min_uint(x);
        }
        Minable.result(block.timestamp, x);
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract ArrayHelper is mutates.MutateProgram, MutateProgram_Minable_Array_uint256MinableMin_ArrayMinableMax_uintMin_Array1MinableMin {
    uint256[3] array = uint256[3](0xfffa, 0x7f0, 0x7fffffffffffffff);
    uint256 min;
    uint256 max;
    uint[] public arr;
    mapping(uint => string) amap;
    mapping(uint => uint256) map;
    mapping(uint => mapping(uint => uint256)) amap2;
    function _min_uint(uint x, uint u) public pure returns (uint) {
        if (x > u) { return u; }
        return x;
    }

    function set_array(uint256[] memory _array) public {
        for (uint i; i < 3 ; i++) {
            this.array[i] = _array[i];
        }
    }

    function set_arr(uint256[] memory _arr) public {
        for (uint i; i < 3 ; i++) {
            this.arr[i] = _arr[i];
        }
    }

    function clear_arr() public {
        this.arr = uint256[3](0xfffa, 0x7f0, 0x7fffffffffffffff);
    }

    function get_array() public view returns (uint256[] memory) {
        return this.array;
    }

    function get_arr() public view returns (uint256[] memory) {
        return this.arr;
    }

    function array2aarray(uint256[] memory arr) public view{
        this.array = arr;
    }

    function arra2array(uint256[] memory arr) public view{
        this.arr = arr;
    }
