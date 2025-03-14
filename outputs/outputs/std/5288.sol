pragma solidity ^0.8.0;
contract MyContract {
    uint256 public nonMutatedAmount = 0;
    uint256 public mutatedAmount = 5;
    uint256[5] array;
}

pragma solidity ^0.8.0;
contract A {
    event myEvent (uint x);
    constructor () {
        emit myEvent(1);
    }
}


pragma solidity ^0.8.0;
bytes32 internal constant _HASH_VALUE_ =
keccak256("Hello World");
contract B {
    function f() public pure returns (bytes32 h) {
        h = _HASH_VALUE_;
    }
}
