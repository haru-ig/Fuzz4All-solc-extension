pragma solidity ^0.8.0;
contract C {
    uint256 c;
    uint256 D;
    function f() public {
        uint256[][] memory x = new uint256[5][];
        x[0] = new uint256[](1);
        x[0][0] = 1;
        c++;
        for (uint256 i = 1; i < 6; i++) {
            x[i] = new uint256[](1);
            x[i][0] += 1;
            c++;
        }
        x[3] = x[0] + D;
        c++;
    }
}
