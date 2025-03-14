pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract ArraysWithPrivateData3 {
    bytes32 internal constant privateData = "Private Data";
    bytes32 indexed public data;
    function setData(bytes32 _data) public {
        require(_data!= bytes32(0), "Value must not be empty");
        data = _data;
    }
    function getData() public view returns (bytes32) {
        return data;
    }
    function setUserData(bytes32 _data) public {
        userDataFunction(_data);
        data = _data;
    }
    function getUserData() public view returns (bytes32) {
        return data;
    }
    function userDataFunction(bytes32 _data) internal {
        require(_data == privateData, "Incorrect data provided");
    }
}
