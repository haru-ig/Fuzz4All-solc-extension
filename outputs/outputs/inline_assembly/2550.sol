pragma solidity ^0.8.0;
contract Comp4 {
    struct BlockChain {
        uint256 a;
        uint256 b;
        uint256 c;
    }

    uint256 _aStorage;
    BlockChain _chain;
    constructor() public {
        _chain.a = 10;
        _chain.b = 20;
        _chain.c = 30;

    }

    function add(uint256 _b) public {
        _chain.a = _chain.a + _b;
    }
    function subtract(uint256 _b) public {
        _chain.a = _chain.a - _b;
    }

    function getAndChangeState(uint256 _b) public view returns (uint256){
        return _aStorage;
    }
}
