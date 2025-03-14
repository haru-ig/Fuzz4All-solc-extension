pragma solidity ^0.8.0;
contract Semantic_WorseCase3 is WorseCase3
{
    function semantic_WorseCase() public pure returns (int) {
        int i = 10;
        int j = 4;
        i = i + j;
        int k = 1;
        j = j - 1;
        return i + j / k;
    }
}

contract ArrayTests {
    function test1() public pure returns (int) {
        return 10;
    }
    function test2() public pure returns (int) {
        return 2;
    }
}
