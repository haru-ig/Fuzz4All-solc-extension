pragma solidity ^0.8.0;
contract Mutate2 {
    uint256 initialBalance = 2200000000;
    uint256 balance2 = 2200000000;
    function main() public {
        mutator2();
    }
    function mutator2() public {
        balance2 = 42 + transferBalanceTo(0);
    }
}
