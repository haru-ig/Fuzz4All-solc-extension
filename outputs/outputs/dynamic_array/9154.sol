pragma solidity ^0.8.0;
contract Foo {
    uint256[] public arrayA;
    mapping(uint256=>uint256) public arrayB;
    function createArrayWith2Values(uint256 value_1, uint256 value_2) public {
        arrayA.length += 1;
        arrayA[arrayA.length - 1] = value_1;
        arrayB[value_1] = value_2;
    }

    function getLengthA() public view returns(uint256){
        return arrayA.length + 1;
    }

    function arrayAAtIndex(uint256 i) public view returns(uint256){
    	return arrayA[i];
    }

    function arrayBAtIndex(uint256 i) public view returns(uint256){
    	return arrayB[i];
    }

    function arrayBForKeyAtIndex(uint256 i) public view returns(uint256){
    	return arrayB[i];
    }
    function getLengthB(uint256 a_i) public view returns(uint256){
        return arrayB[a_i];
    }
}
