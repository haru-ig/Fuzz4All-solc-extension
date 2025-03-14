pragma solidity ^0.8.0;
contract Mutant {
    constructor() public {
    }
    fallback() payable external {
    }
    receive() external payable {
    }
}

pragma solidity ^0.8.0;
contract FallbackMutant {
    constructor() public {
    }
    fallback() payable external {
    }
    receive() external payable {
    }
    function normalCall() public payable {
    }
}

pragma solidity ^0.8.0;
contract ExternalCallMutant {
    constructor() public {
    }
    fallback() payable external {
    }
    receive() external payable {
    }
    function externalCall() public payable {
    }
}

pragma solidity ^0.8.0;
contract InternalCallMutant {
    constructor() public {
    }
    fallback() payable external {
    }
    receive() external payable {
    }
    function internalCall() public payable {
    }
}
