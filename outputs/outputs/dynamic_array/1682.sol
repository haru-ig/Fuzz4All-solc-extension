pragma solidity ^0.8.0;
contract MutatedDynamicArraysA0 {
    uint256[] private elements;
    constructor() public {
        elements = new uint256[](3);
    }
    function modify() public {
        elements[1] += 1;
    }
}
pragma solidity ^0.8.0;
contract MutatedDynamicArraysA1 {
    uint256[] mutable elements;
    constructor() public {
        elements = new uint256[](3);
    }
    function modify() public {
        elements[1] += 1;
    }
}



pragma solidity ^0.8.0;
contract MutatedDynamicArraysB0 {
    uint256[] dynamic elements;
    constructor() public {
        elements = new uint256[](3);
        elements[0] = 90;
        elements[1] = 90;
        elements[2] = 90;
    }
    function modify() public {
        elements[1] = 500;
    }
}
pragma solidity ^0.8.0;
contract MutatedDynamicArraysB1 {
    uint256[] immutable elements;
    constructor() public {
        elements = new uint256[](3);
        elements[0] = 90;
        elements[1] = 90;
        elements[2] = 90;
    }
    function modify() public {
        elements[1] = 500;
    }
}



contract MutatedDynamicArraysC0 {
    uint256[] internal elements;
    constructor() public {
        elements = new uint256[](3);
    }
    function modify() public {
        elements[1] += 1;
    }
}
pragma solidity ^0.8.0;
contract MutatedDynamicArraysC1 {
    uint256[] public elements;
    constructor() public {
        elements = new uint256[](3);
    }
    function modify() public
