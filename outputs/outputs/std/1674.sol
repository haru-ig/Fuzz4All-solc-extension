pragma solidity ^0.8.0;
interface IConvert {
    function uintToString(uint _value) external pure returns (string memory);
    function stringToUint(string memory _value) external pure returns (uint);
}
pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract Memory {
    uint[] public my_array;
    function set_uint(uint _index, uint _value) public {
        memory_set(my_array, _index, _value);
    }
    function uint_at(uint _index) public view returns (uint) {
        return memory_get(my_array, _index);
    }
    function uints_at(uint _index, uint _count) public view returns (uint[]) {
        return memory_gets(my_array, _index, _count);
    }
    function uintValuesCount() public view returns (uint) {
        return memory_size(my_array);
    }
    function memory_set(uint[] storage my_array, uint _index, uint _value) internal {
        bytes32 slot = keccak256(abi.encodePacked(_index));
        assembly {
            my_array[slot] := _value
        }
    }
    function memory_get(uint[] storage my_array, uint _index) internal view returns (uint) {
        bytes32 slot = keccak256(abi.encodePacked(_index));
        return abi.decode(assembly {
            my_array{slot}
        }, (uint));
    }
    function memory_gets(uint[] storage my_array, uint _index, uint _count) internal view returns (uint[]) {
        uint[] memory _v = new uint[](_count);
        for(uint i = 0; i < _count; ++i) {
            bytes32 slot = keccak256(abi.encodePacked(_index, i));
            assembly {
                _v[i] := my_array{slot}
            }
        }
        return _v;
    }
    function memory_size(uint[] storage my_array) internal view returns (uint) {
        return my_array.length;
    }
}
pragma solidity ^0.8.0;
