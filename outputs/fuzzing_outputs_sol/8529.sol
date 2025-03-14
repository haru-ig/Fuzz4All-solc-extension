pragma solidity ^0.8.0;
contract CallerExample13 {
    function subtract(uint x, uint y) public pure returns (uint z) {
        return y - x;
    }
    function subtractAgain(uint x, uint y) public pure returns (uint z) {
        x = x;
        z = subtract(x, y);
    }
}

pragma solidity >=0.8.0;
contract CallerExample14 {
    function subtract(uint x, uint y) public pure returns (uint z) {
        return y - x;
    }
    function subtractAgain(uint x, uint y) public pure returns (uint z) {
        z = subtract(x, y);
    }
}
