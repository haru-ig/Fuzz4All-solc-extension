pragma solidity ^0.8.0;

interface IA {
    function aFuncWithMultipleDynamicArrays(bytes256[][] memory x) external returns (bytes256[] memory y);
}
