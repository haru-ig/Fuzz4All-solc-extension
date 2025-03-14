pragma solidity ^0.8.0;
contract EtherFallback {
    receive() external payable {}
    function receive() public pure {}
}
contract Main {
    EtherFallback public f;
    constructor() {
        f = new EtherFallback();
    }
    function useFallback() external payable {
        f.f();
    }
    function readPayable() public {
        require(isContract(msg.sender));
        bytes memory z = uintToByteArray(block.difficulty);
        f.f.f(z);
    }
}
