pragma solidity ^0.8.0;
contract A {
  uint8 private _number;
  constructor() {
    _number = 0x2;
  }
  function _incrementNumberA() public {

    address myContractAddress = address(this);
    assembly {

      contract E is A {   }
      var e_contract := create(E{value:20000000000*1 ether}())


      assert(e_contract.A.number() == 1)


      mstore8(0x0, add(_number,1))


      e_contract.A.number()



      revert()


      mstore8(0x0, add(_number,1))


      e_contract.A.number()
    }
  }
}
