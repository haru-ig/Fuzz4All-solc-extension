pragma solidity ^0.8.0;
contract Mutation_FunctionCaller1 {
    function add1(uint256 x) public pure returns(uint256) {
        return x + 1;
    }
    function add3(uint256 x, uint256 y) public pure returns(uint256) {
        return x + y;
    }
    function sub1(uint256 x) public pure returns(uint256) {
        return x - 1;
    }
    function sub4(uint256 x, uint256 y) public pure returns(uint256) {
        return x - y;
    }
}
