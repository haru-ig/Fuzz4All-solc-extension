pragma solidity ^0.8.0;
contract EtherTesterMutated4 {
    fallback() external payable { throw 0; }
}
contract EtherTesterMutated5 {
    fallback() external payable { throw ""; }
}
