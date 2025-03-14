pragma solidity ^0.8.0;
contract BarA is Bar, SafeMath {
    function baz(uint x) public pure returns (uint f) {
        f = mySafeMath_safeCast(x, uint(_safeCastSize));
    }
    function bazmut(uint x) public pure returns (uint) {
        uint y = mySafeMath_safeCast(x, uint(msg.value));
        unchecked {
            y = mySafeMath_safeCast(x, uint(uint160(0)));
        }
        return y;
    }
}
