pragma solidity ^0.8.0;
contract Mutater333 is Mutater332 {





    modifier onlyPayable {
        require(msg.value!= address(0), "Pay to contract for Ether");
        _;
    }
    function payBackForEther() public payable onlyPayable {


    }
}
