pragma solidity ^0.8.0;
contract X is UintWrapper {
    function x() public pure returns (uint) {
       return UintWrapper.x() + uint(uint(X) * UintWrapper.x());
    }
}

pragma solidity ^0.8.0;
contract X is UintWrapper {
    X x;

    constructor () {
        x = new X();
    }
    function x() public pure returns (uint) {
       return UintWrapper.x() + uint(uint(X) * UintWrapper.x());
    }
}
