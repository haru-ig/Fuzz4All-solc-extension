pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_86a731b390de4561bc6835ea8644f09a02b6feae
{
    uint256[2] x;
    function f() public {
        x[1] = 1;
        x[0] = x[1];
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_7651f748f70a4dd7baa2b1db3382b7217a1a234f
{
    uint256[2] x;
    function f() public {
        require(x.length >= 1);
        uint256[2] memory otherArray = new uint256[](2);
        for(uint i = 1; i < x.length; i++) {
            otherArray[0] = 2;
            otherArray[1] = x[i-1];
            x[0] = 1;
            x[1] = x[i-1] + otherArray[0];
        }
        x[0] = x[0] + x[1];
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_b4e047f31b294fc9bec45be01126e1b286181c6d
{
    uint256[2] x;
    function f() public {
        x[0] = 1;
        x[1] = 2;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_b03688fbba494153a8fe92f8656d58e7660e9e61
{
    uint256[2] x
