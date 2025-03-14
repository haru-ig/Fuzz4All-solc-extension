pragma solidity ^0.8.0;
contract ComplexMutation12_New {
    function caller(uint8 arg) public pure returns (uint) {
        uint result = arg + 13;
        if (msg.value == 0) {
            return 0;
        } else {
            msg.sender.call{value: msg.value}("");
            if (!address(0).isContract(this)) throw;
            return 0;
        }
    }
    fallback() external payable {}
}
    contract ComplexMutation13_New {
    function caller(uint8 arg) public pure returns (uint) {
        return arg + 13;
    }
    fallback() external payable {}
}
