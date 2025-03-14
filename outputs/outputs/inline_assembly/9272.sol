pragma solidity ^0.8.0;
contract D {
    uint[500][35000] storage s;
    uint[500][35000] publ s;
    function mutatedBy(uint[200]) public returns(uint) {
        uint32 x;
        for (uint i=0; i<500; i++) {
            for (uint j=0; j<35000; j++) {
                if (!s[i][j] && j % 3 == 0) {
                    x = uint(uint(j - uint(uint(j) >> 3)) >> 1);
                    s[i][j] = uint(x - uint(j)) - s[i][j] - s[i][j];
                    s[i][j] = (x - uint(j) - uint(s[i][j] >> 1)) - s[i][j] - s[i][j];
                    s[i][j] = _uint64(x >> 3) - _uint64(x - uint(j)) + s[i][j];
                }
            }
        }
        return uint(s[500][0]) + uint(_uint64(s[501][34999]) >> 22) + (uint(s[500] == 0x0000)? 0x00 : 0x01);
    }
}
