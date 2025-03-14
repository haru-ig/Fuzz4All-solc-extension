pragma solidity ^0.8.0;
contract Mutated_4_2_0a {
    function max(uint x, uint y) public pure returns (uint) {


        return (x >= y)? y : x;
    }
}
contract Mutated_4_2_0b {
    function max(uint x, uint y) public pure returns (uint) {



        if((x >= y) && (x >= x)) {
            return x;
        } else {
            return y;
        }
    }
}
