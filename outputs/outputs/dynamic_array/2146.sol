pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedArrayAssignment_5{
    uint8 array03 [4];
    function test() public pure returns (bool) {
        return true;
    }
    function check_array() public {
        uint8 x1 [4];
        uint8 x2 [4] = [1,2,2,3];
        array03 [0] = {0};
        array03 [2] = {0,1,1,2};
        require(x1!= x2);
        require(x2 == [100,100,100,100]);
        if(x1[0] == 0){
            return;
        }
        require(SemanticEquivalence_NestedArrayAssignment_5.foo(x2) == x2);
        uint8 x3;
        SemanticEquivalence_NestedArrayAssignment_5.foo(uint8(x3));
    }
    function foo(uint8[4] memory x) public pure returns (uint8 temp_x) {
        temp_x = 0;
        temp_x = temp_x % 3;
    }
}
