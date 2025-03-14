pragma solidity ^0.8.0;
contract Example3 {
    modifier onlyExample3() {
        require(msg.sender == 0xc6b4D74DB3540B49E8a38422C7B0aE6676940719, "Only example three");
        _;
    }
    uint256 private __fallbackCount;
    function fallbackFunction() public view returns (uint256) {
        __fallbackCount++;
        return 0;
    }
}
