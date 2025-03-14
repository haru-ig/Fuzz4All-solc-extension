pragma solidity ^0.8.0;
contract E {
    function f(uint256[][] memory a, uint256[][] memory b) public {
        a[0] = [1,2];
        b[0] = [3,4];
        a[1] = [5,6];
        b[1] = [7,8];
    }
}
