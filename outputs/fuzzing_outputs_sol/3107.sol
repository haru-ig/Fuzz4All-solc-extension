pragma solidity ^0.8.0;
contract Contract12D{
    event Fulfilled(uint256 value, bytes memory param1, bytes memory param2);
    uint256 public num;
    uint[2] memory size;
    bytes public data;
    receive() external payable {
        num += 1;
        emit Fulfilled(num, size, data);
    }
}
contract Contract12I {
    event Fulfilled(uint256 value, bytes memory param1, bytes memory param2);
    uint256 public num;
    uint[2] memory size;
    bytes public data;

    receive() external payable {
        num += 1;
        emit Fulfilled(num, size, data);
    }

    function getLengthParam() public view returns (uint256) {
        return size.length;
    }

    function getFirstParam() public view returns (bytes memory) {
        return data;
    }

    function getDataSize() public view returns (uint256 sizeInt) {
        if (size[0] >= 31 && data.length>2**255-1) {
            sizeInt = 2**255-1;
        } else {
            sizeInt=size[0];
        }
        return sizeInt;
    }

    function getLastParam() public view returns (bytes memory) {
        return data;
    }

    function setLastParam(bytes memory _lastParam) public {
        data = _lastParam;
    }

    function setDataSize(uint _data) public {
        size = uint[2](_data, 0);
    }

    function setFirstParam(bytes memory _data) public {
        data = _data;
    }

    function test() public {
        emit Fulfilled("string", "string", "");
    }
}
