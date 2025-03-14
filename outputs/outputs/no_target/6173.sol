pragma solidity ^0.8.0;
contract MutatedContract {
    function modifyResult() public nonReentrant {

        mutatedResult = mutatedResult + 5;
    }
}

pragma solidity ^0.8.0;
contract MutatedContract {
    function modifyResult() public nonReentrant {
        mutatedResult = mutatedResult + 5;
    }
}
contract MutatedContract {
    uint160 constant _MAX_UINT160 = uint160(~uint256(0));
    uint256 constant _MAX_UNSIGNED = type(uint256).max;
    uint256 constant _MIN_UNSIGNED = 0;
    uint160 constant _LOW_UNSIGNED = uint160(uint256((uint64(_MAX_UNSIGNED) + uint64(_MIN_UNSIGNED)) / 2));
}
