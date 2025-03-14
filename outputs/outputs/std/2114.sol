pragma solidity ^0.8.0;
contract Non_mutated_contracts {
    uint value;
    constructor(uint _value) {
        value = _value;
    }
    function get_value() public view returns (uint {
        return value;
    }
}
contract Mutated_contracts {
    uint value;
    constructor(uint _value) {
        value = _value;
    }
    function get_value() public view returns (uint) {
        return value;
    }
}
contract Mutated_contracts2 {
   uint value;
    constructor(uint _value) {
        value = _value;
    }
    function get_value() public view returns (uint) {
        return mut_get_value();
    }
  function mut_get_value()  public view returns (uint) {
        return value;
    }
}
