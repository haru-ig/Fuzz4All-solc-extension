pragma solidity ^0.8.0;
contract C {
    function f() public returns(bytes memory) {
        bytes memory data =abi.encodePacked("Hello");
        return data;
    }
}
contract Caller is C contract {
    constructor() public {
        f();
    }
}
