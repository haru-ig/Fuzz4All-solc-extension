pragma solidity ^0.8.0;
contract Contract {
    bool public xFailedBeforeFallback;
    bytes32 public xMessage;
    address public xTo;
    uint public xValue;
    function fooNoFallback() public pure {
        0;
    }
    function fooNoFallbackFallback() public view {
        xFailedBeforeFallback = false;
        xMessage = "fooNoFallbackFallback";
        xTo = tx.origin;
    }
    function fooNoFallbackNonPayable() public view {
        xFailedBeforeFallback = false;
        xMessage = "fooNoFallbackNonPayable";
        xTo = tx.origin;
    }
    function fooNoFallbackPayable() public payable {
        xFailedBeforeFallback = true;
    }
    function fooWithFallback() public pure returns (uint) {
        return Lib.foo();
    }
    function fooWithFallbackFallback() public view {
        xFailedBeforeFallback = true;
        xMessage = "fooWithFallback";
        xTo = tx.origin;
    }
    function fooWithFallbackNonPayable() public view {
        xFailedBeforeFallback = true;
        xMessage = "fooWithFallbackNonPayable";
        xTo = tx.origin;
    }
    function fooWithFallbackPayable() public payable returns (uint) {
        xFailedBeforeFallback = true;
    }
    function barNoFallback() public pure returns (uint,
        bytes32 message,
        address from,
        uint value) {
        return (37, "barNoFallback", lib.foo, Lib.foo);
    }
    function barNoFallbackFallback() public view returns (uint,
        bytes32 message,
        address from,
        uint value) {
        return (37, "barNoFallbackFallback", lib.foo, Lib.foo);
    }
    function barNoFallbackNonPayable() public view returns (uint,
        bytes32 message,
        address from,
        uint value) {
        return (37, "barNoFallbackNonPayable", lib.foo, Lib.foo);
    }
    function barNoFallbackPayable() public payable returns (uint,
        bytes32 message,
        address from,
        uint value) {
        return (37, "barNoFallbackPayable", lib.foo, Lib.foo);
    }
    function barWithFallback() public pure returns (uint, uint,
        bytes32 message, address from, uint value, uint result) {
        xFailedBeforeFallback = true;
        xMessage = "barWithFallback";
        xTo = tx.origin;
        xValue = 9999;
        return (Lib.foo(), 314, "barWithFallbackFallback", lib.foo, Lib.foo, Lib.foo);
    }
    function
