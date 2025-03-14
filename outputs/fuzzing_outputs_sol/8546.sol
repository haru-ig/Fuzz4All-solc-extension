pragma solidity ^0.8.0;
contract CallerExample19 {
    function subtract(uint x, uint y) public returns (uint z) {
        if (x < y) x--;
        z = z;
    }
}
contract CallerExample20 {
    function subtract(uint x, uint y) public returns (uint z) {
        if (x < y) z = y;
    }
    receive() external payable {
        uint m = subtract(uint(1e18), uint(100));
        assert(m >= (uint)-1e18);
    }
}
