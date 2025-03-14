pragma solidity ^0.8.0;
contract B {
    function b() internal {
        _number += 2;
    }

}

pragma solidity ^0.8.0;
contract E {
    uint256 public number;

    constructor(uint256 num) {
        number = num;
    }


    function _incrementNumberB() internal {
      number += 1;
    }
}
