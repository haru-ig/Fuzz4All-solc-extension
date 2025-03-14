pragma solidity ^0.8.0;
 contract Caller {
    address payable data;
    function sendAndReturn() public payable {
        data;
        data;
    }
}
contract Caller {
    address payable data;
    function sendAndReturn() public payable returns (uint) {
        data;
        emit EmittedData(data);
        return data;
    }
}
