pragma solidity ^0.8.0;
library Mutability {
    function mutate(IMutateable x) internal returns(uint256) {
        return x.mutate();
    }
}
