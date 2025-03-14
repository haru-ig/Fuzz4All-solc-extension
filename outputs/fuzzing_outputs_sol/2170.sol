pragma solidity ^0.8.0;
contract Mutater334_2 {
    address public payee;
    constructor(address payable _payee) {
        payee = _payee;
    }
    receive() payable external {
        payee;
    }
}

pragma solidity ^0.8.0;
contract Mutater334_3 {
    address public payee;
    constructor() public payable {
        payee = payable(msg.sender);
    }
}

pragma solidity ^0.8.0;
contract Mutater334_4 {
    address public payee;
    constructor() public payable {
        payee = payable(msg.sender);
    }
}

pragma solidity ^0.8.0;
contract Caller {
    function simpleCall(Mutater334_1 contractAddress) returns (uint256) {
        (uint256 returnedValue) = contractAddress.call.value(address(this).balance)();
        return returnedValue;
    }
    function simpleCall(Mutater334_2 contractAddress) returns (uint256) {
        (uint256 returnedValue) = contractAddress.call(address(this).balance);
        return returnedValue;
    }
    function callPayable(Mutater334_3 contractAddress) returns (uint256) {
        (uint256 returnedValue) = contractAddress.call.value(address(this).balance)(0);
        return returnedValue;
    }
    function callPayableFail(Mutater334_3 contractAddress) returns (uint256) {
        (uint256 returnedValue) = contractAddress.call.value(address(this).balance)("Hello");
        return returnedValue;
    }
}
