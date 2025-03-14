pragma solidity ^0.8.0;
contract Caller {
    function callContract() public payable {
        Modification myNewContract = new Modification();
        myNewContract.modify();
    }
}
