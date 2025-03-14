pragma solidity ^0.8.0;
contract ComplexStorage {
    function set(uint _y) public not payable  {
        uint z = _y;
        uint x = z - 8;
        uint y = x - 6;
        uint y2 = _y + 4;
        uint x2 = y2 - 8;
        uint y3 = x2 ^ 1;
        uint y4 = _y << 2;
        (x2, y3, y4);
        bytes memory z3;
        require(z3.isContract() == false);
    }
}
