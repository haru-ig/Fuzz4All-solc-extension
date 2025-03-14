pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedAssignment_58193666a2810deca9b4746a41035522
{
}
contract SemanticEquivalence_DynamicallySizedAssignment_7d6b08f3048751cb251d2fa86e31c6b8
{
}
contract SemanticEquivalence_DynamicallySizedAssignment_f13c3164f8ae9e50130003034a6c1af6
{
}
contract SemanticEquivalence_DynamicallySizedAssignment_019758af2c545c85ef7a82b5d57c5490
{
}
contract SemanticEquivalence_DynamicallySizedAssignment_8459a95761be0fc09707e110c742973b
{
}
contract SemanticEquivalence_DynamicallySizedAssignment_27520d9104ee492f1593a517a4f49fc7
{
}
contract SemanticEquivalence_DynamicallySizedAssignment_bb47a0d899453c3b74a708b2d32322ee
{
}


library ArraySizeLib {
    function getSize(uint[] memory array) public pure returns (uint) {
        uint length = array.length;

           return length*sizeof(uint);

    }

    function resize(uint i, uint[] memory array) public pure returns (uint newSize) {
        newSize = array[i];
        if (newSize > 0) {
            uint len = array.length;
            uint newLen = len*sizeof(uint);
            newLen
