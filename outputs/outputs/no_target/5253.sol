pragma solidity ^0.8.0;
contract SimpleExample4 {
    uint256 public num;
    function mutated(uint256 value) public {
        num = value + 1;
    }
}

pragma solidity ^0.8.0;
contract SimpleExample5 {
    uint num;
    modifier invalid(uint x) { invalid1(x); }
    function invalid1(uint) public invalid(-3) {}
}
