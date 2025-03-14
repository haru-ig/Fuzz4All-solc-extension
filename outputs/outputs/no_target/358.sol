pragma solidity ^0.8.0;
contract Semantics {
    function balance() public view returns(uint) {
        return 1;
    }
}
contract Caller {
    function getBalance() public view returns(uint) {
        return Semantics().balance();
    }
}
