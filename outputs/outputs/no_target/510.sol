pragma solidity ^0.8.0;
contract ContractB is ContractA {
    uint256 public a;
    uint256 public b;
    bytes32 public c;
    function constructor() public {
        a= 1;
        b= 1;
        c= 1;
    }
    function method2() public {
        b= a;
        a= x;
    }
}
