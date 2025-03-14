pragma solidity ^0.8.0;
contract C3 {
    event e();
    modifier m { e(); _; }
    uint value();
}
