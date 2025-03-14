pragma solidity ^0.8.0;
contract NonEfficientDynamicArrayTypeCheck2 {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    uint public i;
    constructor ()
    {
        aLength = 0;
        aLength--;
        aLength = a[0].b;
        i = 1;
        i = aLength = i + 1;
    }
    function updateArray() public {
        aLength = 0;
        aLength--;
        aLength = a[0].b;
        aLength++;
    }
}

pragma solidity ^0.8.0;
contract DynamicArrayTypeCheck {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    uint public i;
    constructor ()
    {
        aLength = 0;
        aLength = a[0].b;
        i = 1;
        i = aLength = aLength + 1;
        i = aLength = aLength + 1;
    }
    function updateArray() public {
        for (uint256 ii = 0; ii < aLength; ii++) {
            a[ii].b = true;
        }
        i = 1;
        i = aLength = i + 1;
        i = aLength = i + 1;
    }
}

pragma solidity ^0.8.0;
contract DynamicArrayTypeCheck {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    uint public i;
    constructor ()
    {
        aLength = 0;
        aLength = a[0].b;
        i = 1;
        i = aLength = i + 1;
        aLength = 4;
        i = 1;
