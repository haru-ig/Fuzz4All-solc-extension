pragma solidity ^0.8.0;
contract C {
    function f() public payable {
        bytes memory data =abi.encodePacked("Hello");
        (bool success, ) = tx.origin.call.value(10 ether) data;
        require(success,"success");
    }
}
contract Caller is C {
    constructor() public {
        f();
    }
}
