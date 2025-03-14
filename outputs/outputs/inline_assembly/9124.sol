pragma solidity ^0.8.0;
import "./Lib.sol";
contract C{
    function getResult(uint x, uint y) public view returns (uint) {
        uint x = x + y;
        y = Lib.mul(y,4);
        return Lib.mul(y,4);
    }
}
