pragma solidity ^0.8.0;
contract MutateDynamicArrays18 {
    uint256 constant maxElements = 16;
    uint256[] public elements;
    constructor() public {
        elements = new uint256[](maxElements);
    }
    function changeSize() public {
        elements.length = 8;
    }
}

pragma solidity ^0.8.0;
contract MutatedDynamicArrays19 {
    uint256 constant maxElements = 16;
    uint256[] public elements;
    constructor() public {
        elements = new uint256[](maxElements);
    }
    function modify() public {
        elements.length += elements.length;
        elements[elements.length] += 1;
    }
    function printArrays() public {
        for (uint256 i = 0; i < elements.length; i++) {
            uint256 var = elements[i];
            uint256[] storageVar = elements;
            uint256[][] storage2 = elements;
            mapping (address => uint8) storage = elements;
            (uint256 storage_var, uint256 storage_var, uint256 storage_var, uint256 storage_var) = elements;
        }
    }
}
@title Dynamic Array
pragma solidity ^0.8.0;
contract ArrayWithLength {
        mapping (address => uint256[]) array;
        uint256 public counter;

        function testArray(mapping (address => uint256[]) storage1) public {
            array[msg.sender].length;

            array[msg.sender][0] = 0;
            array[msg.sender][1] = 1;
        }

     function updateArrays(uint256[] calldata _values) public {
          array[msg.sender].length;

        for (uint256 i = 0; i < _values.length; i++) {

            array[msg.sender][i] = _values[i];
        }

          }
        }
}
