pragma solidity ^0.8.0;
contract Storage {

    modifier onlyPayable() {
        _;
    }



    function() public payable fallback() onlyPayable {

        throw;
    }
}
