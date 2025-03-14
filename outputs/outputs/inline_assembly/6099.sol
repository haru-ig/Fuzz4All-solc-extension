pragma solidity ^0.8.0;
contract Immutable {
    address immutable _address;
    constructor(address addr) public {
        require(addr!= address(0), "Immutable.address can not be 0");
        _address = addr;
    }
    modifier onlyBy(_address) {
        require(msg.sender == _address, "Immutable.onlyBy()");
        _;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample12{
    address _address;
    constructor(address addr) public {
        require(addr!= address(0));
        _address = addr;
    }
    modifier onlyBy(address addr) {
        require(msg.sender == addr);
        _;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample13 {
  Immutable mutable x;
  Immutable immutableX;
  constructor() public {
    x.x = 1;
    immutableX.x = 1;
    Immutable memory x;
    x.x++;
    x.x++;
    immutableX.x++;
    immutableX.x++;
  }
  function main() public pure {
      Immutable memory x;
      x.x++;
      x.x++;
      immutableX.x++;
      immutableX.x++;
  }
}
contract NoMutatedSemanticallyEquivalentAssemblyExample3{
    constructor() public {
      Immutable memory x;
      x.x++;
      x.x++;
      immutableX.x++;
      immutableX.x++;
    }
    function main() public pure {
      Immutable memory x;
      x.x++;
      x.x++;
      immutableX.x++;
      immutableX.x++;
    }
}
