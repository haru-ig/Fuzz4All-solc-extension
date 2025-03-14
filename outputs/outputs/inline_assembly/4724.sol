pragma solidity ^0.8.0;
import "mutator87.sol";
contract mutator88 {
    Mutator mut;
    constructor() { mut = Mutator(address(new Mutator87)); }
    function setG() public { mut.set_g(); }
}
contract Mutator {
    constructor (address _addr) payable { address(__addr).transfer(_addr); }
    function set_g() public pure{
        g = 128;
    }
}
