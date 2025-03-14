pragma solidity ^0.8.0;
contract Mutated_2_3_3 {
  modifier OnlyAdmin() {
    require(msg.sender == owner(), "OnlyAdmin");
    _;
  }
}
contract Mutated_2_3_4 {
    uint a;
    constructor() { a = 2; }
    modifier OnlyAdmin() {
        require(msg.sender == owner(), "OnlyAdmin");
        _;
    }
}


contract Mutated_2_3_5 {
    uint a;
    constructor() { a = 3; uint b = 3; require(b <= a, "Must be true");}
    modifier OnlyAdmin() {
        require(msg.sender == owner(), "OnlyAdmin");
        _;
    }

    function f() public {
        require(a > 0 && a < 5, "Must be true");
    }
}
