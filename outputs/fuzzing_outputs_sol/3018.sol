pragma solidity ^0.8.0;
contract Caller {
    address payable contractCaller;
    constructor() public {
        contractCaller = msg.sender;
    }

    function transferToFallback(uint256 amount) public returns (uint256) {







        contractCaller.transfer(amount);
        return amount;
    }




    function transferWithoutFallback(uint256 amount) public {
        contractCaller.transfer(amount);
    }

    function transferToContractCaller(uint256 amount) public {
        CallerWithFallback fallbacker = CallerWithFallback(contractCaller);
        fallbacker.transfer(contractCaller, amount);
    }
}
