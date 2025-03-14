pragma solidity ^0.8.0;
contract MyContract {
    uint public constant public constant CONSTANT_VARIABLE = 10;
    uint public constant public_variable =  256;
    bytes memory public constant public_function_variable =  "Hello World!";
    function public_function() public pure virtual {
      emit PublicVariableChanged(constant_variable);
    }
    bytes8 constant public constant_function_variable = 139;
    function constant_function() public pure virtual {
      emit ConstantVariableChanged(public_function_variable);
    }
    function change(bytes memory _calldata) public virtual onlyContract {
      emit ContractAdded;
      emit ContractChange(_calldata);
    }
}
