pragma solidity ^0.8.0;
import '/home/tulio/Documents/Learning/Golang/github/github.com/bpfkorea/agora-ethereum/contracts/BetterCase4562.sol';
import './Memory.sol';
contract Mutate1826 {
    uint value;
    function get() view public returns (uint) {
        (address b) = Memory.get(0);
        BetterCase4562 memory memoryInstance = BetterCase4562(b);
        value = memoryInstance.get();
        return value;
    }
    function set(uint x) public {
        value = x;
    }
}
