pragma solidity ^0.8.0;
contract IERC20Metadata {

    function name() virtual public view returns (string memory) {
        return IERC20Metadata(address(this)).name();
    }

    function symbol() virtual public view returns (string memory) {
        return IERC20Metadata(address(this)).symbol();
    }

    function decimals() virtual public view returns (uint8) {
        return IERC20Metadata(address(this)).decimals();
    }
}
contract IERC223 is IERC20Metadata {

    function approve(address spender, uint256 amount) virtual public;
}
contract ITokenReceiver {

    function onTokenTransfer(
        address from,
        address token,
        uint256 amount
    ) public;
}
