pragma solidity ^0.8.0;
contract MutatedDynamicArrays {
    uint256[] elements;
    uint256[] public elementsInitial;
    uint256 public elements;
    function add() public {
        elements.push(elements.length);
    }
    function removeFirst() public {
        elementsInitial.shift();
    }
}

pragma solidity ^0.8.0;
contract MutatedDynamicArrays {
    uint256[] elements;
    uint256[] public elementsInitial;
    uint256 public elements;
    function addWithZeroInit() public {
        elements = new uint256[](elements.length + 1);
    }
    function addWith1Init() public {
        elements = new uint256[](elements.length + 1);
    }
    function addWith2Elements() public {
        elements = new uint256[](elements.length + 3);
    }
    function addWith3Elements() public {
        elements = new uint256[](elements.length + 9);
    }
    function addWithMinusInit() public {
        elements = new uint256[](elements.length - 1);
    }
    function addWith1MinusInit() public {
        delete elements;
    }
}

pragma solidity ^0.8.0;
contract MutatedDynamicArrays {
    struct TestType {
        uint256 x1;
        uint256 y1;
        uint256 x2;
        uint256 z;
    }
    TestType[] elements;
    TestType[] public elementsInitial;
    TestType elementsStruct;
    TestType[] public elementsStructs;
    function add() public {
        elements.push(elements.length);
    }
    function removeFirst() public {
        elementsInitial.shift();
    }
}
