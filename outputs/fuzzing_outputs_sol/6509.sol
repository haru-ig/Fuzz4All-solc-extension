pragma solidity ^0.8.0;
contract C {
    function f() public payable {
        bytes memory data =abi.encodePacked("Hello");
        tx.origin.call(data);
    }
}

contract Caller is C {
    constructor() public {
        f();
    }
}
