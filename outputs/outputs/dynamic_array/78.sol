pragma solidity ^0.8.0;
contract B is A {
    uint256 public c;
    function f() public {
        uint256[][] memory d = createMemoryArray(3, 2, 2);
        assignMemoryArrayValues(c, 3, 1, d);
        c = 3;
        for (uint256 i = 0; i < 3; i++)
            for (uint256 j = 0; j < 2; j++)
                bArray[i][j][c].push_back(3);
    }
}











/* contract G is E {
    uint256 public c;
    uint256[][]
