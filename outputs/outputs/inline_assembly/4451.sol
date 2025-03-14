pragma solidity ^0.8.0;
contract EVM5 {
    uint x;
    uint y;

    function EVM () public {
        uint ret = x+y;
        ret = x+x;
        return;
    }
}
