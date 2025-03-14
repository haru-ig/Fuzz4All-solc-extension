pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations34
{
    uint x;
    uint[6] y;
    int z;
    constructor() public {
        x = 47;
        y[3] = x;
        x++;
    }
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35
{
    uint x;
    uint[6] y;
    int z;
    constructor() public{
        x = 47;
        y[3] = x;
        x--;
    }
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations36
{
    uint[6] x;
    uint x_init;
    constructor() public {
        x_init = 47;
        x[0] = x_init + 47;
    }
    fallback() external { x[0]++; }
    function() external payable { payable(0x0); x[1]++; }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutationsNonFallback {
    function() external {
        calldata(x.value);
        x.value = 5200;
        x.value = 8191;
    }
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutationsCalldata {
    function() external {
        calldata(x.value);
        x.value = 5200;
        x.value = 8191;
    }
}
