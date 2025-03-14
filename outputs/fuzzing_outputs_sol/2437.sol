pragma solidity ^0.8.0;
contract Caller3 {
  address payable receiver3;
  address payable receiver4;
  function set(address payable n) public { receiver3 = n; receiver4 = set(n); return; }

  function pay() public payable returns (address payable) {
    set(address(this));
    return receiver3;
  }
  function set( address payable _n) public {
    set(_n);
    return receiver4;
  }
}




pragma solidity ^0.8.0;
contract Caller is Caller2, Caller3 {
  address payable receiver5;
  address payable receiver6;
  function pay() public payable returns (address payable) {
    receiver6.transfer(address(this).balance);
    return receiver5;
  }
  function set( address payable _n) public returns (address payable) {
    receiver5 = _n;
    return receiver6;
  }
}
contract Fallback {
    function fallback() external payable { }
}
