pragma solidity ^0.8.0;
contract Mutant0FallbackFunction3Changes {
    function mutantSetFallbackFunction() public pure returns (uint) {
        return _mutantSetFallbackFunction();
    }
    function _mutantSetFallbackFunction() internal pure returns (uint) {
        return 2 ** 20;

    }
}


pragma solidity ^0.8.0;
contract Caller {
    function sendEther() public {
        self.send(msg.value);
    }
    receive() external payable {}
}
contract Mutant0FallbackFunction3Changes {
    function mutantSetFallbackFunction() public pure returns (uint) {
        return _mutantSetFallbackFunction;
    }

    receive() internal payable {}
    function _mutantSetFallbackFunction() internal pure returns (uint) {
        return 2 ** 20;

    }
}
