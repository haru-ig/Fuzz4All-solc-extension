pragma solidity ^0.8.0;
contract Contract {
  function foo() public;
}
pragma solidity ^0.8.0;
contract NamelessCaller is Contract {
    address public value;
    constructor() {
        value = address(this);
    }
    function example3() public {
        value = address(this);
    }
}
