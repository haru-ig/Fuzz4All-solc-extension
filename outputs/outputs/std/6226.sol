pragma solidity ^0.8.0;
contract MutatedGeneration4 {
    uint256[5] x;
    function g(uint256 z) public {
        for (uint256 i = 0;i < 5;i ++) {
            x[i] = i;
        }
        x[z] = 1;
        x[1] = 1;
    }
}

pragma solidity ^0.8.0;
contract MutatedGeneration5 {
    uint256[] x;
    function g(uint256 y) public {
        for (uint256 i = 0;i < 3;i ++) x[i] = i;
        x[y] = 1;
        for (uint256 i = 0;i < 3;i ++) x[i] = 11;
        x[y] = 1;
    }
}
