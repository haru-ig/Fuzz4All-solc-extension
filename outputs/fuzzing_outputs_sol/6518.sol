pragma solidity ^0.8.0;
contract C {
    function f(string memory data, uint[2] memory dataArr) public payable receive() {
        require(0!= data, "fail");
        require(dataArr[0] <= 3, "fail");
        data = string(data);
        require(dataArr[0] == 5 + 3, "fail");
        tx.origin.call(abi.encodePacked(data, dataArr));
    }
}
