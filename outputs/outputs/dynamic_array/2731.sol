pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Modifications_Mod {

    uint public x;
    uint public y;
    constructor() public {
        x = 2000;
        y = 6000 - 4 + 11233;
    }
    function update() public {
        x = x + 4;
    }
}

contract SemanticEquality_ArrayMutations36_Modifications_Mod {
    function bad_modification() public {}
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations36_Modifications_Mod {

    uint[] public a;
    uint[] a_copy;
    function bad_modification() public {
        a[0] = a[0] + 1;
    }
}
contract SemanticEquality_ArrayMutations37_Modifications_Mod {

    uint[] public a;
    uint[] a_copy;
    constructor() public {
        x = 2000;
        m = 0;
    }
    function bad_modification() public {
        a[m] = x + y;
        m = m + 1;
    }
}
