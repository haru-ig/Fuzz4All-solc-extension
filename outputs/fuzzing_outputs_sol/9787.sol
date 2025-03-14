pragma solidity ^0.8.0;
contract Mutated {
    constructor(address _to) {
       bytes memory msg = "100 200 300";
       _to.call(abi.encodePacked(msg));
    }
    receive() external payable { }
}
