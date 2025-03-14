pragma solidity ^0.8.0;
contract Test54DynamicArrayAbiReencodingSizeValidation {
    function setArray() public {
        uint[] memory a;
        array = a;
    }
    uint[] public array;
    uint x;
    constructor() public {
        x = 2;
    }
}

pragma solidity ^0.8.0;
contract Test68InitializeConstructor {
    function setArray() public {
        uint[] memory a;
        array = a;
    }
    uint[] public array;
    uint x;
    constructor() public {
        x = 2;
    }
}

pragma solidity ^0.8.0;
contract Test70UninitializationFieldsAndArraySize {
    uint x;
    function setArray() public {
        Test44ArraySize b;
        array = b;
    }
    Test44ArraySize public array;
    constructor() public {
        x = 2;
    }
}

pragma solidity ^0.8.0;
contract Test76UninitializationFieldsAndArraySize {
    uint x;
    function setArray() public {
        uint[] memory b;
        array = b;
    }
    uint[] public array;
    constructor() public {
        x = 2;
    }
}

pragma solidity ^0.8.0;
contract Test76UninitializationFieldsAndArraySize {
    uint x;
    function setArray() public {
        Test44ArraySize[] memory b;
        array = b;
    }
    Test44ArraySize[] public array;
    constructor() public {
        x = 2;
    }
}

pragma solidity ^0.8.0;
contract Test76UninitializationFieldsAndArraySize {
    uint x;
    function setArray() public {
        Test44ArraySize[] memory b;
        array = b;
    }
    Test44ArraySize[] public array;
    uint[20] public array2;
    constructor() public {
        x = 2;
    }
}
