pragma solidity ^0.8.0;
contract Semantic0031 {
    bool x;
    bool y;
    pure function f(bool b) public pure returns (bool, bool) {
       if (b) y = false;
       else x = false;
        if (false) {
            x = false;
        }
    }
}
