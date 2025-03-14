pragma solidity ^0.8.0;
contract ModdingLottery {
    uint private nonce;
    constructor(uint64 _initialNonce) public {
        address[] memory emptyTestArray;
        testArray[0] = emptyTestArray;
    }
    function modTestArray() public modifier {
        nonce++;
        testArray[0] = testArray[1];
        _;
    }
    modifier noConflictingCalls() {
        nonce ++;
        address[] memory emptyTestArray;
        testArray[0] = emptyTestArray;
        testArray[1] = emptyTestArray;
        testArray[0][0]  = address(this);
        testArray[2] = testArray[0];
        _;
    }
    function getEquivalenceTestArray() public view returns(address[] memory){
        return testArray;
    }
}
