pragma solidity ^0.8.0;
contract MutatedDynamicArrays20 {
    uint256 constant maxElements = 7;
    uint256[] public elementsInitial;
    constructor() public {
        elementsInitial = new uint256[](maxElements);
    }
    function add() public {
        elementsInitial.push(maxElements);
    }
}

pragma solidity ^0.8.0;
contract MutatedDynamicArrays21 {
    uint256 constant maxElements = 16;
    uint256[] public elementsInitial;
    constructor() public {
        elementsInitial.push(0);
    }
    function add() public {
        elementsInitial.push(elementsInitial.length + 1);
    }
}
address payable contractOne = payable(0x97995E5F28074a9b26b5EF383586497795c54018);

contract MutatedDynamicArrays22 is MutatedDynamicArrays18 {
    address payable contractTwo;
    constructor(address payable _newContract) public {
        contractTwo = _newContract;
    }
}
