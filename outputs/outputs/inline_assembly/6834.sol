pragma solidity ^0.8.0;
contract MixedContactsExample999 {
    uint internal constant test = 42;
    uint x;
    bytes32 internal private hash;
    constructor() {
        x;
        hash;
    }
    function foo() public {
        x = x + 1;
    }
}

pragma solidity >=0.8.0 <0.9.0;

function func() public returns (uint) {

    uint x = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    assembly {
        x := x <<< x
    }
    return x;
}

contract ContractExampleX1 {
    IContract public target;
    uint public val;
    bytes32 internal private hash;
    constructor(IContract target_) {
        target = target_;
        val;
        hash;
    }
    function call_call_nonpayable() public {
        target.transfer(msg.sender, 0);
    }
    function call_call_payable() public payable {
        target.transfer{value: 0}(msg.sender, 0);
    }
    function call_call_direct_constructor() public {
        IContract c = new IContract();
        IContract temp = IContract(c);
        IContract c2;
        c2 = temp;
    }
    function call_call_direct_constructor_payable() public payable {
        IContract c = new IContract();
        IContract temp = IContract(c);
        IContract c2;
        c2 = temp;
    }
    function call_call_direct_constructor_value() public payable {
        IContract c = new IContract();
        IContract temp = IContract(c);
        IContract c2;
        c2 = temp;
    }
    function call_call_direct_constructor_valueout() public returns (bool a) {
        a;
        IContract c = new IContract();
        IContract temp = IContract(c);
        IContract c2;
        c2 = temp;
    }
    function call_get_variable_nonpayable() public view returns (uint) {
        return target.transfer(msg.sender, 0);
    }
    function call_get_variable_payable() public view returns (uint x) {
        x;
    }
    function call_set_variable_nonpayable() public returns (uint) {
        x;
        target.
