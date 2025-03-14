pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations10 {
    uint public i;
    function fct (uint[] memory x) public {
        i = 0;
        uint _x = x[x.length-1] + 1;
        x[0] = 2 * _x;
        x[x.length-1] += 1;
        x.length += 1;
    }
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations11 {
    uint public i;
    address public addr;
    function fct (uint[] memory x) public {
        i = 0;
        addr.store(this, 0xabc);
        addr.store(addr, 0);
        uint _x = x[x.length-1] + 1;
        x[i] = 2 * _x;
        x.length += 1;
    }
}
