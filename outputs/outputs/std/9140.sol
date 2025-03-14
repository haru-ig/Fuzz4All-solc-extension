pragma solidity ^0.8.0;
contract EfficientComparisonMutatedContract {
    EfficientComparisonGenericContract foo;
    function increment() public {
        foo.increment();
    }
    function getValue() public view returns (uint256) {
        return foo.getValue();
    }
}
contract EfficientComparisonTests {
    using EfficientComparisonGenericContract for EfficientComparisonGenericContract.EfficientComparisonGenericContract;
}
