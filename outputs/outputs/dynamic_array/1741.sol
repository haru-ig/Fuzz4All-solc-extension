pragma solidity ^0.8.0;
contract MutatedDynamicArrays20 {
    uint256 constant maxElements = 16;
    uint256[] public elements;
    constructor() public {
        elements = new uint256[](maxElements);
    }
    function add(uint256 _value) public {
        uint256 currentMaxElements = elements.length;
        for (uint256 i = 0; i <= currentMaxElements; i++) {
            elements[i] = 0;
        }
        elements[currentMaxElements] = _value;
    }
}

pragma solidity ^0.8.0;
contract MutatedDynamicArrays21 {
    uint256 constant _maxElements = 3;
    uint256[] memory data;
    constructor() public {
        data = new uint256[](_maxElements);
    }
    function add(uint256 _index, uint256 _value) public {
        data[uint256(_index)] = _value;
    }
}
