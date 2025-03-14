pragma solidity ^0.8.0;
contract ArrayWithModifications {
    function mod_add(uint[] memory x, uint y) public returns (uint z) {
        return x.add(y);
    }
    function mod_sub(uint[] memory x, uint y) public returns (uint z) {
        return x.sub(y);
    }
    function mod_mul(uint[] memory x, uint y) public returns (uint z) {
        return x.mul(y);
    }
    function mod_div(uint[] memory x, uint y) public returns (uint z) {
        return x.div(y);
    }
    function mod_and(uint[] memory a, uint[] memory b) public returns (uint z) {
        return a.and(b);
    }
    function mod_or(uint[] memory a, uint[] memory b) public returns (uint z) {
        return a.or(b);
    }
}
