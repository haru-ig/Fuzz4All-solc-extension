pragma solidity ^0.8.0;
contract EtherTesterModerated1 {
    receive() external payable {
        throw "dummy";
    }
}
contract EtherTesterMutated2 {
    receive() external payable returns(uint x) {}
}
