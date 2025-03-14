pragma solidity ^0.8.0;
contract MutatedGeneration36 {
    uint256 totalNumberOfIterations = 53;
    uint256 numberOfMutations1 = 2;
    uint256 numberOfMutations2 = 1;
    uint256 numberOfMutations3 = 1;
    function mutateDataContract() public pure returns (MutatedGeneration36Modified) {
        MutatedGeneration36Modified memory newGen = MutatedGeneration36Modified({totalNumberOfIterations: totalNumberOfIterations, numberOfMutations1: numberOfMutations1, numberOfMutations2: numberOfMutations2, numberOfMutations3: numberOfMutations3});
        return newGen;
    }
}
contract MutatedGeneration51 {
    uint256 totalNumberOfIterations = 26;
    uint256 numberOfMutations1 = 2;
    uint256 numberOfMutations2 = 1;
    uint256 numberOfMutations3 = 1;
    function mutateDataContract() public pure returns (MutatedGeneration51Modified) {
        MutatedGeneration51Modified memory newGen = MutatedGeneration51Modified({totalNumberOfIterations: totalNumberOfIterations, numberOfMutations1: numberOfMutations1, numberOfMutations2: numberOfMutations2, numberOfMutations3: numberOfMutations3});
        return newGen;
    }
}

pragma solidity ^0.7.0;
contract Check {
    uint addressLength = 20;
    uint currentAddr;
    function checkAddr() public view returns (bool){
        bytes memory addr_ = uint2str(uint32(keccak256(abi.encodePacked(block.coinbase))))
        addressLength = strLen(addr_);
        return (addr_.length == addressLength);
    }
    function uint2str(uint number) private pure returns(string memory) {
        if (number == 0){ return "0"; }
        uint temp = number;
        string memory s = "";
        while (temp!= 0) {
            uint reminder = temp % 10;
            s = toString(reminder) + s;
            temp /= 10;
        }
        return s;
    }
    function toString(uint j) internal pure returns(string memory) {
        if (j < 26){ return string("a" + string(uint8(j))); }
        if (j < 10){ return string("0" + j.toString()); }
        return "r" + j.toString();
    }
    function strLen(string memory str) internal pure returns(uint) {
        return uint(bytes(str).length);
    }
}
contract MutatedGeneration47 {
    uint256 totalNumberOfIterations
