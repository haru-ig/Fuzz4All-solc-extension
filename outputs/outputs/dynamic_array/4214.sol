pragma solidity ^0.8.0;
contract R {
    uint256[] x = new uint256[]( new uint256[]( 2 ).length );
    uint256[2][3] memory y = new uint256[2][3]( 1, 2, "foo" );
    constructor() public {
        uint256[] memory output1 = x;
        output1[0] = 4;
        uint256[] memory output2 = y;
        output2[1][0] = 4;
    }
}
