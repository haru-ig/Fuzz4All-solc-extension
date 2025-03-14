pragma solidity ^0.8.0;
contract SimpleMutation1 {
    function simpleMutation() public {
        emit Simple();
    }
    event Simple();
    receive() external payable {
    }
    fallback() external {
    }
}

pragma solidity ^0.8.0;
contract Caller {
    function simpleCaller() public {
        emit CallerSimple();
    }
    event CallerSimple();
    receive() external payable {
    }
    function simpleCaller2() public {
        emit Caller2Simple();
    }
    event Caller2Simple();
    fallback() public {
    }
}
