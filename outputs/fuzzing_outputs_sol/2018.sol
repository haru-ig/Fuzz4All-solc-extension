pragma solidity ^0.8.0;
contract Contract {
    address public immutable contractAddress;

    function Contract() public {
        contractAddress = address(this);
    }

    function sendAndFail() public payable {

        Mutater9 mutated = Mutater9(contractAddress);
        mutated.mutatedFunction();


        mutated.call().value(payable(address(this))).gas(50000);
    }

    function sendAndThrow() public payable {

        Mutater9 mutated = Mutater9(contractAddress);
        mutated.mutatedFunction();


        mutated.call().value(payable(address(this))).gas(50000);
    }
}
