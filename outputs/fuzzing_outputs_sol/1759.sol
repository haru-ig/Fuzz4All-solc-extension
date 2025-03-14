pragma solidity ^0.8.0;

contract ConstructorTester {

    address private testContractsStorage_;
    uint256 private testContractCount_;
    constructor () {testContractsStorage_ = new address[](2 * 6 + 1); testContractCount_ = 2 * 6 + 1;}

    function getTestContractStorageCount () external view returns (uint256) {return testContractCount_;}

    function newTestAddress (address[] memory testContractsArray) public returns (address) {
        assert(testContractsCount_ < (2 * 6 + 1));
        uint256 count = (testContractsArray.length + 1);
        require(count <= (2 * 6 + 1), "Array size too large for the storage array in ConstructorTester");
        uint256 length = testContractCount_;
        for (uint256 i = 2 * 6 + 1; i < 2 * 6 + 2; i++) {
            testContractsStorage_[i] = testContractsArray[((2 * 6 + 1) - i) / 6];
        }
        require(testContractsStorage_[2 * 6] == address(0), "Cannot duplicate first address");
        testContractsArray[((2 * 6 + 1) - count) / 6] = address(this);
        testContractsStorage_[2 * 6 + 1] = testContractsArray[(count - 1) / 6];
        testContractsCount_ += count;
        return address(this);
    }

    function getTestContract (uint256 index) external view returns (address) {
        return testContractsStorage_[testContractCount_ + 1 + (2 * 6) + (index - 2 * 6)];
    }
}
