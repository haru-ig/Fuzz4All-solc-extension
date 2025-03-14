pragma solidity ^0.8.0;
contract MutantFunction {
    constructor(address _address) public {
        require(_address!= address(0));
    }
    function nonMutantFunction() public pure {
        bytes memory data = new bytes(0);
        assembly {
            let result := _address

            function_call(0, to(result), 0, 0, data)
        }
    }
    function nonMutantFunctionFallback() public pure {
        bytes memory data = new bytes(0);
        assembly {
            let result := _address
            function_call(0, to(result), 0, 0, data)
        }
    }
    receive() external payable { }
}
