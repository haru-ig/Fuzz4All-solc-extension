pragma solidity ^0.8.0;
contract Mutation{
    uint256 x;
    constructor() public {
        x = 5;
    }
    function functionCallAndReturn(uint256 val) public returns (uint256) {
        (uint256 x = 1) = func_Call_2();
    }
    function func_Call_2() pure public returns (uint256) {

        (uint256 x) = func_Call();

        return x;
    }
    function func_Call() pure public returns (uint256) {
        return 5;
    }
    function mutate() public {

        (uint256 x) = functionCallAndReturn(val + x);
        (uint256 x) = 3;
        x = func_Call_2();
    }
    function return2() public pure returns (uint256) {
        return 1;
    }
}
