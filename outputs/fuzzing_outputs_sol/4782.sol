pragma solidity ^0.8.0;
contract Fallback9 {
    receive() public payable {
    }
}
contract Fallback11 {
    receive() public payable {
    }
}
contract Fallback12 {
    receive() public payable {
    }
}
contract Caller {

    function () external payable {
        fail();
    }
    fallback () internal payable {
        fail();
    }

    function fail() public {
    }
}
