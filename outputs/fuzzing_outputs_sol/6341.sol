pragma solidity ^0.8.0;
contract MutantFallback {
    function mutantFallback() public payable { }
    receive() external payable { }
}

pragma solidity ^0.8.0;
contract MutantReceive {
    function mutantReceive() public payable receive() {}
    receive() external payable { }
}





pragma solidity ^0.8.0;
contract MutantFunction {
    function mutantFunction() public pure { }
    function mutantFunctionFallback() public pure { }
    receive() external payable { }
}

pragma solidity ^0.8.0;
contract MutantFallback {
    function mutantFallback() public payable { }
    receive() external payable { }
}

contract MutantReceive {
    function mutantReceive() public payable receive() {}
    receive() external payable { }
}
