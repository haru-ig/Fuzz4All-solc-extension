pragma solidity ^0.8.0;
contract SemanticMutation13 {
    function test0()
        public
        pure
        returns (uint64)
    {

        uint256[5][5] memory x;
        uint256[3][10] memory y;
        y[0][1] += 3;
        y[0][2] = 10 - 3;
        y[1][0] *= 10;
        y[2][2] *= -3;
        uint64 f;
        f = 0;
        uint256[2][10] memory y1;
        y1[0][1] += 0;
        y1[1][0] *= 10;
        y1[0][2] *= -3;
        uint256[2][10] memory y2;
        (f, y2) = y;
        y2[0][1] += 3;
        y2[0][2] = 10 - 3;
    }
}
