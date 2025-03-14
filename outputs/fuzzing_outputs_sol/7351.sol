pragma solidity ^0.8.0;
contract LowCostFallback{

    modifier onlyForThisFunction
    {
        require(msg.value >= 1000000 || msg.data.length!= 0);
        _;
    }
    fallback() external onlyForThisFunction {
        uint256 storageValue = 42;
        uint256 value = storageValue + msg.value;
        if ((value % 5) == 0) {
            throw;
        }
    }
}
