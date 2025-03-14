pragma solidity ^0.8.0;
 contract Mutation_FunctionCaller7 {
    uint8 constant MAX_ARRAY_LENGTH = 128;
    uint8 constant MIN_ARRAY_LENGTH = 1;
    uint storage MAX_ARRAY = 2;

    function get_array_length() public view returns(uint) {
        return MAX_ARRAY;
    }

    function allocate_array() public view returns(uint) {
        return 2;
    }

    function get_array(uint index) private returns(uint) {
        return index;
    }

    function update_array(uint index, uint new_array_length) public {
        MAX_ARRAY = new_array_length - 1;
        if (index < 0) {
            return;
        }

        uint[] memory tmp = new uint[](2);
        tmp[0] = index;
        tmp[1] = MAX_ARRAY;
        removeFirstElement(tmp);
    }
}

pragma solidity ^0.8.0;
contract Mutation_FunctionCaller8 {
    uint128[] memory _test;
    uint index = 0;
    string _value;
    uint[] memory _numbers = new uint[](3);

    function set(uint index_, uint value) public {
        index = index_;
        _value = uintToString(_value) + uintToString(value);
    }

    function get_value() public view returns(string memory) {
        return _value;
    }

    function get(uint index_) public view returns(uint) {
        index = index_;
        return get_array_at(index_);
    }

    function get_array_at(uint index_) public view returns(uint) {
        index = index_;
        return _numbers[index];
    }

    function get_number() public view returns(uint[]) {
        return _numbers;
    }

    function mutate(uint new_index1) public returns(uint) {
        index = new_index1;
        return get();
    }

    function mutation_with_array() public returns(uint) {
        string memory a = string(abi.encodePacked("a"));
        uint[] memory b;
        for (uint i = 0; i < _test.length; i++) {
            b[_test[i]] = _test[i + 1];
        }
    }

    function mutation_as_an_array_variable() public returns(uint[]) {
        _test[0] = 1;
        return _numbers;
    }

    function add_new_element() public returns(uint) {
        uint[] memory new_array = new uint[](8);
        new_array[0] = 0;
        new_array[index] = 0;
        add(new_array);
        return get();
    }

    function new_int(uint n) public returns(uint, uint[], uint) {
        uint number = index;
        index++;
        uint[] memory tmp;
        uint[] memory num = new uint[](4
