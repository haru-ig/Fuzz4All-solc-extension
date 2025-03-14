pragma solidity ^0.8.0;
contract YulContract {
    function addValues(uint a, uint b) internal pure returns (@YulInt aint, @YulInt bint) {
       aint = a;
       bint = b;
    }
}
