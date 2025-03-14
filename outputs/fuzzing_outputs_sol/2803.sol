pragma solidity ^0.8.0;



import './Caller.sol';

contract Caller5Mod {

    constructor(Caller1 _caller) {
      Caller1._setCaller(_caller);
    }



    receive() external payable {}
    function fallback() public payable {}
}
