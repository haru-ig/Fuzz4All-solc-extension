pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations406{
    modifier not_equal(uint[] calldata x, uint[] memory y){
        require(x.length!= y.length);
        uint r;
        assembly {
            r := sub(add(x, 1), add(y, 1))
        }
    }
    uint256[] public x;
    uint256[] public y;
    function fct (uint[] memory x) public not_equal(x, y) {
        x[x.length] = 1;
        x[x.length +1] = 2;
        x[x.length +2] = 3;
        x.length += 4;
    }
}
