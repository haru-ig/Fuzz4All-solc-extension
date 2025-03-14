pragma solidity ^0.8.0;
contract D is B {
    bytes2 public b;
    function ff() public pure returns (bool) {
        return true;
    }
    function gff() public pure returns (bool) {
        return true;
    }
}
contract E is D {
    bytes2 public b;

    function gg() public pure returns (bool) {
        return b.length > 0;
    }
}
