pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_fd5e3e407ab58e7e0c1fbef630cfff4e4759e338
{
    function myFun(uint256[] memory a) public {
        a.push(7);
        a[1] = a[0];
    }
}
