pragma solidity ^0.8.0;
contract TokenRecipient {
    function onERC677Received(
        address operator, address from, uint256 tokenId, bytes calldata data
    ) external payable returns (bytes4) {
        return IERC677TokenReceiver(operator).onERC677Received(operator, from, tokenId, data);
    }
}
pragma solidity ^0.8.0;
contract Test {
    constructor(address token) public {
        assembly {
            mstore(0, add(token, 32))
        }
    }
}
