pragma solidity ^0.8.0;
contract MutatedProgram2 {
    uint[] public a;
    uint256 public b;
    function mutate_b() internal returns(uint256) {
        uint256 tmp = b;
        b = b + 1;
        return tmp;
    }
    function __mutate_a() internal {
        a.push(mutate_b());
    }
}
