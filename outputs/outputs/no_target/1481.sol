pragma solidity ^0.8.0;
contract Semantic0031 {
    bool a;
    bool b;
    bool c;
    uint8 d;

    function same() public pure {
        bool x;
        x = false;
        if (false) {
            x = a;
        }
        bool x0;
        if (a || false) {
            x0 = true;
        } else {
            x0 = a;
        }
    }
}
