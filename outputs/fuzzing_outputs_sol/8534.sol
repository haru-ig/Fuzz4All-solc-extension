pragma solidity ^0.8.0;
contract CallerExample15 {
    function subtract(uint x, uint y) public pure returns (uint z) {
        return y - x;
    }
    function subtractAgain(uint x, uint y) public pure returns (uint z) {
        if (x == 0) revert();
        if (y == 0) revert();
        z = subtract(x, y);
    }
}
pragma solidity >=0.8.0;
contract CallerExample16 {
    function subtract(uint x, uint y) public pure returns (uint z) {
        return y - x;
    }
    function subtractAgain(uint x, uint y, uint z) public pure returns {}
    function subtractAgain2(uint x, uint y, uint z) public pure returns {}
}
pragma solidity >=0.8.0;
contract CallerExample17 {
    uint x, y;
    function subtract(uint _x, uint _y) public pure returns (uint) {
        return _y - _x;
    }
    function subtractAgain(uint _x, uint _y) public pure returns (uint) {
        x = _x;
        y = _y;
        return subtract(_x, _y);
    }
    function subtractAgain2(uint _x, uint _y) public pure returns (uint) {
        x = _x;
        y = _y;
        x = 0;
        y = 0;
        return subtract(_x, y);
    }
}
