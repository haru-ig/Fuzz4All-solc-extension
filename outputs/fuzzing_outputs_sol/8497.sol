pragma solidity ^0.8.0;
library CallerExample5 {
    function subtract(uint x, uint y) public pure returns (uint) pure {
        revert("should not be reached");
        return x - y;
    }
}
contract CallerExample6 {
    function subtract(uint x, uint y) public pure returns (uint) { return CallerExample5.subtract(x, y); }
}
pragma solidity ^0.8.0;
contract CallerExample7 {
    uint8 constant x = -1;
    function subtract(uint x, uint y) public pure returns (uint) { return x - y; }
}
