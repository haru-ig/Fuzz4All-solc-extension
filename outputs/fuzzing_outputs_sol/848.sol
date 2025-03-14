pragma solidity ^0.8.0;
contract Mutated {
    function nonReturnFallback(uint256[] memory _arg) external {
        revert();
    }
}

pragma solidity ^0.8.0;
contract FunctionCall {
    function nonReturnFallback(uint256 _arg) external {
        self.x(_arg);
    }
    function x(uint256 _arg) internal {
        _;
    }
}

pragma solidity ^0.8.0;
contract CallFunctions {
    function nonReturnFallback(uint256 _arg) external {
        self.x(_arg);
    }
    function f(uint256 _arg) internal {
        _;
    }
    function x(uint256 a) internal pure {}
}
