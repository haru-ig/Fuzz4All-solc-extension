pragma solidity ^0.8.0;
contract X {
    bytes19 bytes19_;
    function f() public returns (bytes) {
        bytes4 b1;
        bytes4 b2;
        assembly {
            b1 := mload(add(0, _returnData))
            b2 := mload(add(0, _returnData + 1))
        }
    }
}


pragma solidity 0.5.7;
contract Y {
    bytes19 public data;
    function f() public returns (uint216) {
        return uint216(data);
    }
}
