pragma solidity ^0.8.0;
contract CallerExample6 {
    function subtract(uint x, uint y) public pure returns(uint z) {
        assert(y > 0);
        return x - y;
    }

    function assertEqual(uint x, uint y) public pure returns(bool z) {
        assert(x == y);
        return true;
    }
}
