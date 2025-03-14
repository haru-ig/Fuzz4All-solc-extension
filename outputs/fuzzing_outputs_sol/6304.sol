pragma solidity ^0.8.0;

contract NoFallback {

    function fallback() public {

    }


    function mutantFunction(address _data) public {
        uint _contractSize = address(this).slotBytes();
        uint _contractCodeSize = _contractSize - 6;

    }


    function mutantFunctionFallback() public {

    }
}
}
