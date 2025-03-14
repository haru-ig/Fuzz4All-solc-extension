pragma solidity ^0.8.0;
library Lib {
    string[] public strings;
    function toUpper(string memory source) public pure returns (string memory result) {
        assembly {
            result := mload(add(source, 32))
        }
    }
    bytes16 constant MY_CONSTANT = bytes16(0xffffFfd1FEdFf1FeFF);
    bytes16 public x = MY_CONSTANT;
}
contract Call {
    constructor () {
        Lib.strings.push("1");
        Lib.strings.push("true");
        Lib.strings.push("");
        Lib.strings.push("");
        Lib.strings.push("");
        Lib.strings.push("");
        Lib.strings.push("");
        Lib.strings.push("");
        Lib.strings.push("");
        Lib.strings.push("");
        Lib.strings.push("");
        Lib.strings.push("");
        Lib.strings.push("");
        Lib.strings.push("");
    }
    bytes16 constant MY_CONSTANT = bytes16(0xffffFfd1FEdFf1FeFF);
    enum Status {
        SUCCESS,
        REVERT
    }
    receive() external payable {}
    fallback() external payable {
        transfer(address(this.fallback()), this.fallbackCost());
    }
    function fallbackCost() public pure returns(uint256){
        return 1 ether;
    }
    function checkResult() public view returns (uint8) {
        switch(Lib.x) {
            case MY_CONSTANT:
                return statusSuccess;
            case bytes16(bytes1(1u)):
                return statusRevert;
        }
    }
    function status(uint8 val) public pure returns(Status memory, uint8) {
        return Status[val].value, val;
    }
    function checkResult(uint8 val) public pure returns(bool) {
        return val == Lib.checkResult();
    }
    function statusSuccess() public pure returns(uint8) {
        return Lib.checkResult();
    }
    function statusRevert() public pure returns(uint8) {
        throw;
    }
}
