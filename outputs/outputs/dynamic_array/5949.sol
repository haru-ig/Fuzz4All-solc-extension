pragma solidity ^0.8.0;
contract MutatedTest29603 {
    Test29603 internal test = new Test29603();

    function mutatedTest() public {
        assembly {
            test.dataArray := mload(add(test.dataArray, 1))
        }
        uint[][2][2] memory memory2 = getArrayStorage(test.dataArray);
    }

    function getArrayStorage(uint[][] input) public view returns (uint256[][] memory) {
        uint[][] memory storage2 = input;
    }
}
