pragma solidity ^0.8.0;
contract CallerFallbackMutated {
    receive() external payable {}
    fallback() external payable {}
}

pragma solidity ^0.8.0;
contract InitialCaller {
    uint256 x;

    receive() external payable {
        x += 1;
    }
}


pragma solidity ^0.8.0;
contract SecondCaller {
    uint256 x;

    receive() external payable {
        x += 1;
    }
}
