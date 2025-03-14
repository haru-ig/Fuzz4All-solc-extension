pragma solidity ^0.8.0;
contract Mutate {
  address payable public _address;
  uint public _amount;
  uint[] public _array;
  constructor(uint amt, uint[7] memory _arry) {
    _address = payable(msg.sender);
    _amount = amt;
    _array = _arry;
  }
  fallback() external payable {
    require(address(this).balance>3);
    emit LogEvent1(payable(msg.sender),"");

  }
}
interface MyOwnable {
    event OwnershipTransferred(address indexed from, address indexed to);


    modifier onlyOwner() {
        require(isOwner(), "MyOwnable: caller is not the contract's owner");
        _;
    }


    function isOwner()
        internal
        view
        returns (bool);


    function transferOwnership(address _newOwner)
        onlyOwner
        returns (bool);
}
