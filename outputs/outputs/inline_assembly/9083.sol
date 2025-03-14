pragma solidity ^0.8.0;




library Lib
{
    function add(uint a, uint b) public pure returns (uint) {
        return Lib.add(a, b);
    }
    function pow(uint a, uint b) public pure returns (uint) {
        return Lib.pow(a, b);
    }
    function div(uint a, uint b) public pure returns (uint) {
        return Lib.div(a, b);
    }
    function mul(uint a, uint b) public pure returns (uint) {
        return Lib.mul(a, b);
    }

    function divmod(uint a, uint b) public pure returns (uint, uint) {
        return (Lib.div(a, b), Lib.mul(a, b));
    }
}
