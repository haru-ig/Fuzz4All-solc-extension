pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck20 {
    uint256[][] public array1;
    uint public a = 1;
    function MutatedFunction() public {
        array1[a].push(100);
        array1.push(new uint256[](2));
        array1[0].push(200);
    }
}
