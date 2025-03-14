pragma solidity ^0.8.0;
struct Add10 {
    uint a;
}
library Add10 {
    function add(uint a) internal pure returns (Add10 memory) {
        return Add10(a);
    }
}
contract Mutated9 {
    function add(Add10 memory x) internal pure returns (Add10 memory) {
        Add10 memory y = add(x);
        return y;
    }
}
