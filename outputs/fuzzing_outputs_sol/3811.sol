pragma solidity ^0.8.0;
contract Example21{
    payable example;
    function Example21() {
        example = payable(msg.sender);
    }
    function example21() external payable {
        example.transfer(msg.value);
    }
}
contract Example22{
    Example21 example;
    function Example22() {
        example = new Example21();
    }
    function example22() public {
        example.example21.value(msg.value)(msg.data);
    }
}
contract Example23 {
    event Log(address _from, address _to);
    address payable contract_caller;
    function Example23() { contract_caller = payable(msg.sender); }
    function example23() payable external {
        contract_caller.transfer(msg.value);
    }
}
pragma solidity ^0.8.0;
contract Example24 {
    address public contract_callee;
    address payable contract_caller;
    function Example24() { contract_caller = payable(msg.sender); }
    function example24() external payable {
        contract_callee();
    }
    function example23() public {
        contract_caller.call{value: msg.value}("");
    }
}
