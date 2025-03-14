pragma solidity ^0.8.0;
contract IERC20Metadata {
    function name() virtual public view returns (string memory) {
        return "";
    }
    function symbol() virtual public view returns (string memory) {
        return "";
    }
    function decimals() virtual public view returns (uint8) {
        return 0;
    }
}
