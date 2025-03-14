pragma solidity ^0.8.0;
contract G {
    uint256 x = 0;
    uint256 memory y = 0;
    uint256[2] z = [ 1, 2 ];
    uint256 public w;
    constructor (uint256[2] memory input, uint arg) public {
        uint256[2] memory prev = z;
        uint256 x_ = input[0];
        x = x_;
        y = input[1];
        z[0] = x_;
        z[1] = y;
        prev[1] = prev[0];
        prev[1] = prev[1] ^ arg;
    }
}











pragma solidity ^0.8.0;
contract G {
    constructor(uint256 x, uint256 y) public {
        uint256[] memory a = [ 1, 2, 3, 4, 5, 6 ];

        a[0] = x; a[2] = y;
    }
}











pragma solidity ^0.8.0;
contract G {
    constructor(uint256 x, uint256 y) public {
        uint256[3] memory z = [ 1, x, y ];
