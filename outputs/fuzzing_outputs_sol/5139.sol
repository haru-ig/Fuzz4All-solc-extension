pragma solidity ^0.8.0;
contract C2 {
    receive(uint) external payable {
    }
}
contract C1 {
    fallback() external payable {}
}
contract Test {
    uint callForEther(uint value, uint value2) public pure returns (uint) {
        return address(this).call.value(value + value2)("");
    }
    function fallback() external payable {}
}


modifier modifierOf() {
    return true;
}
