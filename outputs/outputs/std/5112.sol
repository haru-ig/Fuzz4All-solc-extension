pragma solidity ^0.8.0;
contract Driving {
    uint[] aData;
    Driving() { aData.push(1); aData.push(1); }
    function drive() private returns (uint len) {
        uint i;
        if (aData.length!= 0) {
            for (i = aData.length; i > 2; --i) {
                aData[i - 2] = aData[i - 2] - aData[i - 1];
                aData[i - 1] ^= aData[i];
                aData[i] ^= aData[i - 1];
            }
            if (aData[2] == 0) len = 2;
            else len = 1;
        }
    }
}
