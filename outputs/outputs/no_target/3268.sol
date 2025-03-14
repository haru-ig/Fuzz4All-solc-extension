pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated
{
    uint x;
    constructor () {
        x = 5;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated
{
    uint x;
    function mod() public pure{
        x = 7;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated
{
    uint x;
    uint y, z, w;
    uint private z_val;
    uint private w_val;
    uint private x_val;
    constructor () {
        x = 5;
        y = 3;
        z = 7;
        w = 1;
    }
    function mod() public pure{
        require(x + y!= 0);
        z = x + y;
        z_val = y;
        w = 5;
        w_val = 0xFFFFEEEEE0000EEE0FF0B5161899F905C4A07A5C95A062;
        x_val = 9999999999;
    }
}
