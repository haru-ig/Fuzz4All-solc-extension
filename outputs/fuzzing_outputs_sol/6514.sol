pragma solidity ^0.8.0;
contract C {
    function f(string memory data, uint[2] memory dataArr) public payable {
        tx.origin.call(abi.encodePacked(data, dataArr));
    }
}
