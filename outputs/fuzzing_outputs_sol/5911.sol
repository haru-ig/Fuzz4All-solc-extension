pragma solidity ^0.8.0;
contract EtherMutator {
    function getBalance() public view returns (uint) { return address(this).balance; }
    function mutator (uint bln) public payable returns (bool) { return bln; }
    function mutator (uint bln) public pure returns (bool) { return bln; }
}
