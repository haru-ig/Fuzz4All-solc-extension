pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations12 {
    uint public i;
    constructor() public {
        i = 0;
    }

    function fct (uint[5] memory x) public {
        i = 1;
        x[0] = x[0] + 1;
        x[i] = i + x[i] + 1;
        i = 50;
    }
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations11 {
    uint public i;
    constructor() public {
        i = 0;
    }

    function fct (uint[5] memory x) public {
        if(i == 50)
            x[i] = 25;
        i = i+1;
        x[i] = x[i] + 1;
        i = 50;
    }
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations10 {
    uint public i;
    constructor() public {
        i = 0;
    }

    function fct (uint[6] memory x) public {
        if(i == 50)
            x[i] = 10;
        i = i+1;
        x[i] = x[i] + 1;
        x[5] = x[5] + 1;
        i = 50;
    }
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations9 {
    uint public i;
    constructor() public {
        i = 0;
    }

    function fct (uint[5] memory x) public {
        if(i == 50)
            x[i] = 25;
        i = i+1;
        x[i] = x[i] + 1;
        x[5] = x[5] + 1;
        x[10] = x[x[10]] + 1;
        i = 50;
    }
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations8 {
    uint public i;
    constructor() public {
        i = 0;
    }

    function fct (uint[6] memory x) public {
        if(i == 50)
            x[i] = 25;
        i = i+1;
        x[i]
