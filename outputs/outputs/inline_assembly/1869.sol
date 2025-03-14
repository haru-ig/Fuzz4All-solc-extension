pragma solidity ^0.8.0;
contract newX {
    uint internal x = 1;
    function func() public {
        uint256 i;
        uint256 j;
        while (i!= 0) {
            uint256 n = 1;
            uint256 m = 1;
            while (n > m) {
                x = x + n;
                m++;
                n += 2;
            }
        }
    }
}
