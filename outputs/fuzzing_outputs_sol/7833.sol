pragma solidity ^0.8.0;
contract SimpleCaller {
    address payable payee;
    function _transfer(IERC20 token, address recipient, uint wad) internal {
        uint tokenBalanceBefore = token.balanceOf(address(this));
        token.transfer(recipient, wad);

        bytes32 result = keccak256(abi.encodePacked(tokenBalanceBefore, token.balanceOf(address(this))));
        require((token.balanceOf(address(this))) == tokenBalanceBefore + wad), "Caller.sol: Transfer failed.");
        emit TransferSuccess(msg.sender, recipient, token.balanceOf(address(this)), msg.value, result);
    }


    constructor () payable {
    }


    fallback() external payable {
    }


    receive() external payable {
    }

    event TransferSuccess(address indexed from, address indexed to, uint value, uint tokenBalanceBefore, bytes32 result);
}
