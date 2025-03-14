pragma solidity ^0.8.0;
contract SemanticEquivalence3 {
    struct Data { address payable x; }
    Data internal data;
    constructor() { data = Data(msg.sender); }
    function run() public { return; }
    receive() payable { }
}
contract SemanticEquivalence4 {
    struct Data { uint x; bytes4 y; }
    Data internal data;
    constructor() { data = Data(5, assembly {
        calldataload(0)
    }); }
    function run() public { return; }
}
