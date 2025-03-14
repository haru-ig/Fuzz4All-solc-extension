pragma solidity ^0.8.0;
contract IERC721Receiver {
    function onERC721Received(address from, address to, uint256 id, bytes memory data) virtual public returns(bytes4) {
        return(bytes4(keccak256('onERC721Received(address,address,uint256,bytes)')));
    }
}
