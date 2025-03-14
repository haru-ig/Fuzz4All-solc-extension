pragma solidity ^0.8.0;
contract Mutant {
    function someFunction() public {
        fallback();
    }
}
contract FallbackMutant {
    fallback() external payable {
    }
}
contract ExternalCallMutant {
    external function someFunction() public payable {
    }
}
contract InternalCallMutant {
    internal function someFunction() public payable {
    }
}
