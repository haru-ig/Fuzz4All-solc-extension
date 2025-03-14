pragma solidity ^0.8.0;
contract B {
    function B() public {}
    contract A {
        address payable non_payable;
        uint counter = 0;
        uint x = 0;

        constructor() public {
	    non_payable.transfer(counter);
        }
    }
}
