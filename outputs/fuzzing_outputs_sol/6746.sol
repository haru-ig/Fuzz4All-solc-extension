pragma solidity ^0.8.0;
contract FallbackMutatorSemanticEquivalent {
    struct Storage1 {
        uint16 x;
    }
    constructor() {}
    fallback() external payable {
        Storage1 storage storage1 = storage();
        storage1.x = 5;
        emit MutLog(5);
    }
    event MutLog(uint16 x);
    function storage() private view returns(Storage1 storage1) {
        return Storage1(0xFF);
    }
}
contract BadFallbackContract {
    constructor() {}
    fallback() external payable {

        require(msg.sender == address(this), "Sender should be equal to FallbackMutator contract");
        require(address(this).balance >= msg.value, "Value should be larger than the fallback ether");
        emit BadFallbackEvent(msg.sender, msg.value);
    }
    event BadFallbackEvent(address from, uint256 value);
}
