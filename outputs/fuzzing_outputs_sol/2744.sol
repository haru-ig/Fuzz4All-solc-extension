pragma solidity ^0.8.0;
contract Caller2 {
    function _fallback() public payable {
        (bool bool, bytes memory data) = address(this).call.value(address(this).balance)("");
        require(bool, "failure");
    }
    function foo() public {
        _fallback();
    }
}
contract Caller {
    function _fallback() public payable {
        (bool bool, bytes memory data) = calldata(address(this).balance);
        require(bool, "failure");
    }
    function foo() public {
        _fallback();
    }
}
