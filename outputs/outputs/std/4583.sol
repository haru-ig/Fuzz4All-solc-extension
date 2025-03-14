pragma solidity ^0.8.0;

contract Memory {
    function arrayFunc(uint[] memory values) public pure {
        if (values.length > 0) {
            return;
        }
    }
    uint private _a;
    function arrayFunc(uint _a) public pure {
        _a = 42;
    }
}



pragma solidity ^0.8.0;


contract Memory {
    function arrayFunc(uint[] memory values) public pure {
        if (values.length > 0) {
            return;
        }
    }
    uint private _a;
    function arrayFunc(uint _a) public pure {
        _a = 42;
    }
    function __() public pure constructor() {
        _a = 43;
    }
}
