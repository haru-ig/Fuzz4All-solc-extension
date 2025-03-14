pragma solidity ^0.8.0;

 contract MutatedABICoder3{
  uint16 public fixedVariable;
  bool public fixedBool;
  mapping(address => uint) public addressBook;
  constructor () {
    fixedVariable=5;
    fixedBool=true;
  }
  function returnVariable() public view returns(uint){
   fixedVariable++;
   return fixedVariable;
  }
  function mutatedVariable() public {
    fixedVariable--;
  }
}

interface Proxy {

  address deployProxy(address code);
  uint deployProxyWithGas(address code, uint gasLimit);
}

contract TestProxy is Proxy {

  bool private created;



  constructor (address _factoryAddress, address codeAddress) Proxy(_factoryAddress, codeAddress) {
    created = true;
  }

  function create() public onlyByProxy(address(0)){
    assert(created);
    assembly {
      returndatacopy(0x0,0x208,(code.size))
    }
  }
}

contract Test {
    uint[23] memory uints;
    constructor () {
      for ( uint i; i < 16; i++){
        uints[i]=10**20;
      }
      uint x = 40U;

      x.sub(1);
      assert(false);
    }
}
