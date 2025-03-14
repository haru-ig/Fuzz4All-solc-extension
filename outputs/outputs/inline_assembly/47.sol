pragma solidity ^0.8.0;
contract B {
    uint8 private _number;
    constructor() {
      _checkNumber(1);
      _number += 1;
    }
    function _incrementNumberB() internal {
      _number += 1;
    }
    function _checkNumber(uint256 added) internal pure {
      if(_number + added < 16){
        address(0).balance;
        return;
      }
      return;
    }
}

pragma solidity ^0.8.0;
contract A {
    constructor (){
        B c = new B();
    }
}

pragma solidity ^0.8.0;
contract B {
    uint8 public _limit = 0;
    constructor(){
        for (uint8 _i = 1; _i < _limit; _i = _i +1 ) {
            c = new B();
        }
    }
}
pragma solidity ^0.8.0;
contract A{
    uint counter;
    uint limit;
    constructor (){
        counter = 13;
        limit = 100;
    }
    function setLimit(uint newLimit){
        limit = newLimit;
        A a = new A();
    }
}
