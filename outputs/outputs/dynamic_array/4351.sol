pragma solidity ^0.8.0;
contract TestContract {
    uint256[5] testArray;
    function test(uint256 a) view public returns(uint256) {
        return uint256(testArray.test(uint256(a)));
    }

    function setArray() public {
        for(uint256 i=0; i<5; i++) {
            testArray[i] = uint256(i);
        }
    }
}
