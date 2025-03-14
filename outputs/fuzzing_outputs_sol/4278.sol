pragma solidity ^0.8.0;
contract SimpleFallbackCaller2 {
    function Mutator2(uint _x, bytes32 _y) public pure {
    }
}
contract ContractWithFallback {
    SimpleFallbackCaller public simpleCaller;
    SimpleFallbackCaller2 public simpleCaller2;

    constructor() {
        simpleCaller = new SimpleFallbackCaller();
        simpleCaller2 = new SimpleFallbackCaller2();
    }
    receive() external payable {}
    receive() external pure {}
}
