pragma solidity ^0.8.0;
contract TestMutated {
    function add(uint x, uint y) public {
        uint z = uint(x + y + 500);
        if (x > 500 || y < 500) {
            assembly {
                _;
            }
        }
    }
}
