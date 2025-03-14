pragma solidity ^0.8.0;
contract test22 {
    uint n = 42;
    uint256 m2;
    uint internal v2;
    function test() public
    {
        uint256 m = n + 101;
        uint256 num1 = m + 42;
        uint256 n2 = m + n;
        n2 = m + num1;
        m2 = 4 * n2;
        uint256 n3 = m + v2;
    }
}
