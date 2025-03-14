pragma solidity ^0.8.0;
contract SquashGenerationsUsingYulWithSemantics {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    address public g;
    uint constant GENESIS_TIME = 27000;
    modifier isGenesisTime { require(block.timestamp >= GENESIS_TIME); _; }
    modifier isNotGenesisTime { require(block.timestamp < GENESIS_TIME); _; }
   function change2 (address v) public {
    a = address(3);
    b = address(3);
    c = address(3);
    d = address(3);
    e = address(a);
    isGenesisTime;
    e = f;
    f = a;
    f = f;
    g = address(3);
    }
}
