pragma solidity ^0.8.0;
interface ISummarized {
    function getSum() external view returns (uint256);
    function getSumUsingEIP854() external view returns (uint256);
}

contract IsEqual {
    uint256 public value = 29970;

    function getData(bytes32[1] memory key) public pure returns (byte) {
        return data[key];
    }

    function getDataUsingEIP854(bytes32[] memory keys) public pure returns (byte) {
        return data[0];
    }

    function getDataWithoutEIP854(bytes32[] memory keys) public pure returns (byte) {
        return data[0];
    }

    function getDataEIP854(bytes32 memory key) public pure returns (byte) {
        return data[key];
    }

    function getDataWithoutEIP854EIP854(bytes32[] memory keys) public pure returns (byte) {
        return data[2];
    }

    function getDataEIP854EIP854(bytes32[] memory keys) public pure returns (byte) {
        return data[0];
    }

    function getValue() public view returns (uint256) {
        return value;
    }
}
