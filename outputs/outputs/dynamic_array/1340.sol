pragma solidity ^0.8.0;
contract MutatedEquivalentMutatedDynamicArrayTypeCheck4 {


    function assignArray(uint256 _a) external {
        array[index] = ArrayItem(true);
        assign(true);
    }


    function assignInput(uint256 _a) external {
        assign(true);
    }



    function assign(ArrayItem[] memory lhs,ArrayItem[] memory rhs) public {
        for (uint256 i = 0; i < lhs.length; i++) {
            assign(i,lhs[i]);
        }
        for (uint256 i = 0; i < rhs.length; i++) {
            assign(i,rhs[i]);
        }
    }



    function assign(uint256 i, ArrayItem memory a) internal {
        require(i < array.length,"Mutation attempted in unused slot");
        require(a.b="Mutation attempted with un-initialized contents");
        array[i] = a;
        length++;
    }
}
