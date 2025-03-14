pragma solidity ^0.8.0;
import './mutatedStorage.sol';
contract mutated {
    uint b;

    function update() public {
        mutatedStorage.set(42);
        uint res = mutatedStorage.get();
        uint mod42 = (res % 42);
        assert(mod42 == 0);
    }
}
