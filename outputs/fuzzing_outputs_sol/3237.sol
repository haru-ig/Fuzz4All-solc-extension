pragma solidity ^0.8.0;
contract CodeSize {
    function codeSize() public pure {
        require(true, 'code size calculation for an empty contract is not supported!');
    }
}

pragma solidity ^0.8.0;
contract EmptyContractFallback {
    constructor () {}
    function lowLevelFallback() private pure {
        Contract.codeSize();
        Contract.codeSize();
    }
    receive() external payable {}
}
