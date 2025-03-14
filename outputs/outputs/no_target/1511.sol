pragma solidity ^0.8.0;
contract Semantic0036 {
    function exact() public pure {
        uint x = 0;
        if (true) {
            x = 0;
        } else {
            x = 0;
        }
        if (true) {
            x = x - 1;
        } else {
            x = 0;
        }
        uint y = x * x;
        uint z = uint(-x);
    }
}
