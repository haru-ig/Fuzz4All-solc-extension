pragma solidity ^0.8.0;
contract Mutating_FunctionCaller2 {
    function setArray(uint[] memory _new_array) public {
        uint[] memory _stored_array = _new_array;
        _new_array[0] = 1;
        _stored_array.length = 1;
    }
}
contract Mutating_FunctionCaller1 {
    function modifyArray(uint[] memory _new_array) public {
        uint[] memory _stored_array = _new_array;
        setArray(_new_array);
        _stored_array.length = 1;
        _stored_array.length = 0;
    }

    function setArray(uint[] memory _new_array) public {
        _new_array[0] = 1;
    }
}
contract MutatingMethods {
    function _getArray() public view returns (uint[]) {
        return new uint[](1);
    }

    function _mutateArray() public {
        uint[] memory _stored_array = _getArray();
        _stored_array.length = 1;
    }

    function _getNonMutateArray() public view returns (uint[]) {
        return new uint[](0);
    }

    function _mutateNonMutateArray() public {
        uint[] memory _stored_array = _getNonMutateArray();
        _stored_array.length = 0;
    }

    function _mutateAndGetNonMutateArray(uint i) public returns (uint[]) {
        uint[] memory _stored_array = _getNonMutateArray();
        _stored_array.length = i + 2;
        _stored_array[i] = 1;
    }

    function _mutateAndGetArray(uint i) public returns (uint[]) {
        uint[] memory _stored_array = _getArray();
        _stored_array.length = i + 2;
        _stored_array[i] = 1;
    }

    function _modifyArray(uint[] storage _stored_array) public {
        _stored_array[1] = 1;

    }

    function _modifyStoreArray(uint[] storage _stored_array) public {
        _stored_array.length = 1;
        _stored_array[0] = 1;
    }
}
