pragma solidity ^0.8.0;
contract CallerExample10 {
    uint public constant AMOUNT = 1600;
    uint public constant VALUE = 16;
    address public contractAddress;

    function sendEtherToContract() public payable {
        contractAddress.call{value:VALUE}()("");
    }

    function fallback() public payable {
        contractAddress.call{value: AMOUNT}("");
    }
}
