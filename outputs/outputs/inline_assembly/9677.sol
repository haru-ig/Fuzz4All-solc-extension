pragma solidity ^0.8.0;
contract SemanticYulContractMutator {
 uint32 internal contractCounter;
 uint32 constant c  = 150;
    function subtract(uint x) internal pure returns (uint) {
            x > 10 * 20 *5 *5 * x + 120? x : 120;
    }
    function power(uint x) internal pure returns (uint) {
            x > 10 * 20 *5 *5 *2 *2 *2 *x + 120? x : 120;
    }
    function addBy(uint x) internal {
     uint temp = x *10 *10 *10 * c *10 *10 * c *10 *55 * c  + 5;
        contractCounter += temp* 10 *10 *10 *33 * c  + 5;
     }
}
