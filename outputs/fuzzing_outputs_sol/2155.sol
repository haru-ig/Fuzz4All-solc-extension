pragma solidity ^0.8.0;
contract Mutater357 {
    address public payee;
    constructor(address payable _payee) {
        payee = _payee;
    }
    function getPayee() public view returns (address) {
        return payee;
    }
    function fallback() public payable {



    }
}

contract Mutater390 {
    address public payee;

    constructor(address payable _payee) public {
        payee = _payee;
    }

    function getPayee() public view returns (address) {
        return payee;
    }


    function callMe() public payable {
        bytes calldata calldata2 = abi.encodeWithSignature("getPayee()");
    }

    function callMe2() public payable {
        bytes calldata calldata2 = abi.encodeWithSignature("getPayee()");
        (bool value, bytes memory data) = payee.call{value: msg.value - 1e18}(calldata);
    }

    function callMe3() public {
        bytes calldata calldata1;
        (bool value, bytes memory data) = payee.call{value: msg.value - 1e18}(calldata1);
    }


    function writeStorage() public {
        uint256 value;
        value = msg.value;
    }


    function testFallback() public payable {
        (bool value, bytes memory data) = payee.call{value: msg.value - 1e18}("");
    }
}
