pragma solidity ^0.8.0;
contract FallbackFunction {

    bytes4 constant public MAGIC_BYTECODE4 = 0x3b80adef;
    byte public magic;
}

contract ContractWithFallbackFour_8_S is FallbackFunction {
    constructor() {
        magic = MAGIC_BYTECODE4;
    }
    function myFunc4() public pure returns(bytes4) {
        return MAGIC_BYTECODE4;
    }
    function test() public {
        assert(magic == MAGIC_BYTECODE4);
    }
}

contract ContractWithFallbackFour_9_S is FallbackFunction {
    constructor() {
    }
    function myFunc4() public pure returns(bytes4) {
        return 0x3b80adef;
    }
    function test() public {
    }
}

contract ContractWithFallbackFour_10_S {
    function myFunc4() public pure returns(bytes4) {
    }
    constructor() {
    }

    pragma solidity = 0.5.0;
}

contract CallFallbackFunctionToContract_11_S {

    receive() external payable {
    }
}

contract CallFallbackFunctionToContract_12_S {
    contract ContractWithFallback_13_S is FallbackFunction {
        constructor() {
        }
        function myFunc4() public pure returns(bytes4) {
            return MAGIC_BYTECODE4;
        }
        function test() public {
            assert(magic == MAGIC_BYTECODE4);
        }
    }
}
