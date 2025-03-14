pragma solidity ^0.8.0;
struct Mutated {
  uint128 x;
    uint256 y;
    mapping(uint256 => bool) a;
}
contract Mutant {
    function f(Semantic memory s) public {
        mutate(2, 1);
        unchecked {
            uint128 x = mul(2, 1);
        }
    }
}
