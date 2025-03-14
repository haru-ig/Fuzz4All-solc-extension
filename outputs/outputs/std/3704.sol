pragma solidity ^0.8.0;
contract Mutations {
    uint16 m;
    function div(uint16 x, uint16 y) public pure returns (uint16) {
        require(y!= 0);
        return x / y;
    }
    function divMutated(uint16 x, uint16 y) public returns (uint16) {
        uint16 x2 = 2 * x;
        uint16 x3 = mulMutated(x, x2);
        return divMutated(x3, y);
    }
    function mul(uint16 x, uint16 y) public pure returns (uint16) {
        require(y!= 0);
        return x * y;
    }
    function mulMutated(uint16 x, uint16 y) public pure returns (uint16) {
        uint16 x2 = x * x;
        uint16 x3 = mulMutated(x2, y);
        return divMutated(x3, y);
    }
}
