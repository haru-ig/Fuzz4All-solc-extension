pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck19 {
    uint256[][] public array1;
    function MutatedFunction() public {
        array1[0].push(100);
        array1.push(new uint256[](2));
        array1[0].push(200);
    }
}
