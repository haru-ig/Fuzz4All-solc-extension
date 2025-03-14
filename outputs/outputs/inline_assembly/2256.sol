pragma solidity ^0.8.0;
contract MoreSemver
{
    uint d;
    address a;
    bool initialized;
    uint[20] public c;
    uint i = 0;
    constructor() {
        d = 2000000000;
        a = msg.sender;
        initialized = true;
    }
    function doThat() public {

        if(initialized){

            uint[20] memory tmp = c;
            c = tmp;
            i = 0;
            uint[20] memory tmp1 = tmp;
            c = tmp1;
        }
        else{
            initialized = true;
        }
    }
}

pragma solidity ^0.8.0;
contract MoreSemver
{
    uint256 d;
    address a;
    uint256[20] public c;
    uint256 i = 0;
    constructor() {
        d = 2000000000;
        a = msg.sender;
        initialized = true;
    }
    function doThat() public {
        if (initialized) {
            c[i] = c[i] - 1;
            d = d * d;
            a = msg.sender;
            initialized = true;
            i = i + 1;
        } else {
            initialized = true;
        }
    }
}
