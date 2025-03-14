pragma solidity ^0.8.0;
contract Mutated_3_4_0 {
    function max(int x, uint y) public pure returns (uint) {
        require(-1 <= y);
        require(x <= y);
        if(x >= 0) {
            return uint(x);
        }
        else {return uint(y);}
    }
}
