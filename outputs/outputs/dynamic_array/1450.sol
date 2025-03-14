pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayNestedMutateFunction20 {
    function MutatedFunction() public {
        uint256 x;
        uint256 y;
        uint256 z;
        uint256[] memory zarray1;
        uint256[] memory zarray2;
        (x,y,z) = zarray1;
        uint256[] memory array1 = zarray2;
        array1.push(y);
        array1.push(z);
        zarray2 = array1;
    }
}
