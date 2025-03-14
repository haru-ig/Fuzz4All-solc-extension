pragma solidity ^0.8.0;
contract ComplexMutation12_Old {
    function caller(uint8 arg) public pure returns (uint) {
        uint result = arg + 13;
        return result;
    }
    fallback() external payable {}
}

    contract ComplexMutation13_Old {
    function caller(uint8 arg) public pure returns (uint) {



        return arg + 13;
    }
    fallback() external payable {}
}
