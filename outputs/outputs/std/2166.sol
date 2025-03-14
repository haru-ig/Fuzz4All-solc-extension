pragma solidity ^0.8.0;
contract Mutated_5_5 {
    function max(uint x )public pure returns (uint ) {
        uint z = x;
        z = x <= 1? 1 : z;
        x = x <= 1? 1 : x;
        return x;
    }
}
