pragma solidity ^0.8.0;
contract C3 {





    receive() external payable {}
}
contract Example {
    function callContract() public payable {
        C3 myContract = new C3();
        myContract.fallback();
    }

}
