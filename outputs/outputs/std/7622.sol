pragma solidity ^0.8.0;
contract BetterCase6 {
    uint[5][5][5] public a;
    memory[5][5][5] b;
    function useless(uint x) public {
        a[0][0][0 + bytes32(uint256(keccak256(abi.encodePacked(keccak256("\x19EIP712Domain(string name = 'ERC721',version = '1',chainId = 1')));
                keccak256(abi.encode(keccak256("transfer(address,uint256)"), msg.sender, 5));
                keccak256(abi.encode(keccak256("safeTransferFrom(address,address,uint256)")))
                keccak256(abi.encode(keccak256("transferFrom(address,address,uint256)")))
                keccak256(abi.encode(keccak256("approve(address,uint256)")))
                keccak256(abi.encode(keccak256("setApprovalForAll(address,bool)")))
                ))][0][0] = x;
    }
}
