pragma solidity ^0.8.0;
contract SemanticsTest1_1 {
    function subtract1(uint256 x) pure public returns (uint y){
        y = x - 1;
        return y;
    }
}
