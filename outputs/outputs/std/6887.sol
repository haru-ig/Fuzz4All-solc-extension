pragma solidity ^0.8.0;
contract Mutation_FunctionReference1 {
    function callByAddress1() public {
        Mutation_FunctionCaller1 func1 = new Mutation_FunctionCaller1();
        (bool res, uint256 val) = func1.returnByAddress1();
    }
    function returnByAddress1() public pure returns (bool res, uint256 val) {
        return (bool(uint256(0xAB)), 0xAB);
    }
}
