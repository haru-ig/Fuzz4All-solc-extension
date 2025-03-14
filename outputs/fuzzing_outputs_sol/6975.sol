pragma solidity ^0.8.0;
contract CallExample {

    function callTest() public{
    address _toAddress = 0xa9228ecCDeac7e6572D943b357feA93c7E82d5A3;

    bytes memory empty;
    assembly {
        let ptr := allocate(16)
        let result := delegatecall(gas(), _toAddress, 0, add(empty, 32), 32, ptr, mload(ptr), empty)
    }
    }



}
