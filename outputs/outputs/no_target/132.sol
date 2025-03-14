pragma solidity ^0.8.0;
contract A {
    uint256 data;
    uint256 public constant GOVERNANCE_TOKEN = 0x1275a1599292D2D86B5a96e9c50C9948f129c994;

    function call2(uint value) public pure returns (uint result){
        uint256 g = GOVERNANCE_TOKEN;
        result = g - value;
        return result;
    }
}

interface IGovernonary {
    function changeApproval(
        address token,
        uint newValue,
        uint deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;
}
