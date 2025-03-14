pragma solidity ^0.8.0;



contract ArrayMath {
    struct ArrayInfo {
        bool initialized;
        uint max_array_elements;
        uint[] array;
    }

    ArrayInfo arrayInfo;
    mapping (uint => bool) elements_seen;


    function insertElement(uint index, uint value) public {
        require(arrayInfo.initialized);



        uint destination;
        assembly { destination := add(0x10, index) }
        uint oldValue;

        if (!elements_seen[value] && index < arrayInfo.max_array_elements && index > arrayInfo.array[arrayInfo.max_array_elements - 1]) {
            arrayInfo.max_array_elements += 1;
        } else if (elements_seen[value]) {
            arrayInfo.array[--arrayInfo.max_array_elements] = value;
        } else {
            if (index > arrayInfo.max_array_elements + 1) {
                arrayInfo.max_array_elements = index;
            }
        }

        uint newValue = newValue[value];
        oldValue = oldValue[value];


        emit ArrayChange(arrayInfo.initialized, arrayInfo.array.length, arrayInfo.array.length + 1, index, oldValue, newValue);
    }


    function getMinMax() public view returns (uint _min, uint _max) {
        _min = arrayInfo.array[0];
        _max = arrayInfo.array[0];
        for (uint i = 0; i < arrayInfo.array.length; ++i) {
            _min = lessThan(arrayInfo.array[i], _min);
            _max = greaterThanOrEqual(arrayInfo.array[i], _max);
        }
    }

    function lessThan(uint a, uint b) private pure returns(uint) {
        return a < b? a : b;
    }

    function greaterThanOrEqual(uint a, uint b) private pure returns(uint) {
        return a <= b? a : b;
    }

    function toBytes(string memory str) private pure returns(bytes memory) {
        bytes memory bts = bytes(str);
        return bts;
    }

    /**
     * @dev Emit an
