pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract modified{
    uint256 y = x + 1;
    uint256 x = uint256(y);
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract modified{
    uint16 k;
    uint16[3] a;
    uint16 x = uint16(k);
    for(uint16 i=0; i<3; i++) {
        a[i] = uint16(i+1);
        x = uint16(a[i]);
    }
    uint16 y = uint16(x);
}
