pragma solidity ^0.8.0;
contract Caller {
    address payable self;
    address payable childAddress;
    function simpleTransfer () public { self.transfer(childAddress.call{ value : address(this).balance }()); }
    function receiveEthers () public { self.transfer(childAddress.value(address(this).balance)()); }
}
