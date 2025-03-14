pragma solidity ^0.8.0;
contract ArrayExample {
    function getValues (uint _arrayIndex) public view returns (uint256) {
        return values[_arrayIndex];
    }
    function setValues (uint _arrayIndex, uint _newValue) public {
        values[_arrayIndex] = _newValue;
    }
    uint256 maxLength = 18;
    function find (uint _searchIndex, uint256[] memory _inputArray) public view returns (uint256) {
        for (uint i=0; i < _inputArray.length; i++) {
            if(values[_searchIndex] == _inputArray[i]) {
                return i;
            }
        }
        return 0;
    }
    function length () public view returns (uint256) {
        return values.length;
    }
    function getSubarray (uint _arrayIndex) public view returns (uint256[] memory) {
        return subarrays[_arrayIndex];
    }
    function setSubarray (uint _arrayIndex, uint256[] memory _array) public {
        subarrays[_arrayIndex] = _array;
    }
    function add (uint256 _number, uint _arrayIndex) public {
        values[_arrayIndex] = values[_arrayIndex] + _number;
    }
    function remove (uint256 _number, uint _arrayIndex) public {
        uint256 newValue;
        if (values[_arrayIndex] < _number) {
            newValue = values[_arrayIndex] + values.length;
        } else {
            newValue = values[_arrayIndex] - _number;
        }
        for (uint i=0; i < maxLength; i++) {
            if(values[i] == newValue) {
                values[i] = values[0];
                subarrays[i].splice(0,1);
                break;
            }
        }
    }
    function indexOf (uint256 _number, uint _arrayIndex) public view returns (uint) {
        for (uint i=0; i < values.length; i++) {
            if(values[i] == _number) {
                return i;
            }
        }
        return 0;
    }
    function push (uint256 _number, uint _arrayIndex) public {
        for (uint i=0; i < maxLength; i++) {
            if(values[i] == maxLength) {
                values[i] = _number;
                subarrays[i].push(_number);
                break;
            }
        }
    }
    function sort(uint _arrayIndex) public {
        uint256[] memory subArray = subarrays[_arrayIndex];
        for (uint i=1; i < subArray.length; i++) {
            uint256 currentValue;
            uint256 currentIndex;
            for (uint j=0; j < i; j++) {
                if (
