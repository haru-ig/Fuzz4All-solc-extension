pragma solidity ^0.8.0;
contract SemanticallyIncompatible {
    function semanticallyIncompatible() public { }
}
contract SemanticallyExistent {
    function semanticallyExistent() public { }
}
contract NoContracts {
    function doNothing() public {}
}
contract TestCallerNoContracts {
    function test() public {
        require(call.value == 0, "Expected to receive Ether");
    }
}
contract SendEtherToCallWithFallback {
    constructor(int amount) public payable {  }

    function test() public {
        call.value(address(this).balance - amount, abi.encodeWithSignature("test_fallback()"));
        uint256 actual = SemanticallyExistent.semanticallyExistent();
        require(actual == 0, "Received unexpected value");
    }

    function testWithFallback(uint256 amount) public payable {


        call.value(amount, abi.encodeWithSignature("test_fallback()"));
        uint256 actual = SemanticallyExistent.semanticallyExistent();
        require(actual == 0, "Received unexpected value");


        semanticallyEquivalent();


        receive();
        semanticallyExistent();
    }

    receive() external payable {



        semanticallyEquivalent();
    }
}
contract SendEtherReceiveWithFallback {
    constructor(int amount) public payable {  }

    function test() public {
        call.value(address(this).balance - amount, abi.encodeWithSignature("test_fallback()"));
        uint256 actual = SemanticallyIncompatible.semanticallyIncompatible();
        require(actual == 0, "Received unexpected value");
    }

    function testWithFallback(uint256 amount) public payable {


        call.value(address(this).balance - amount, abi.encodeWithSignature("test_fallback()"));
        uint256 actual = SemanticallyIncompatible.semanticallyIncompatible();
        require(actual == 0, "Received unexpected value");


        receive();
        semanticallyExistent();
    }
}
contract SendEtherReceiveWithFallbackCalls {
    constructor(int amount) public payable {  }

    function test() public payable {

        address payable receiver;
        uint256 amount = uint256(msg.value);

        receiver.call.value(amount, abi.encodeWithSignature("
