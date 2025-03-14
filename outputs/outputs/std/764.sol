pragma solidity ^0.8.0;
contract Minter2 {
function mint() public view returns(uint) {
uint random = uint(uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, block.number))) / 0x3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
_mint(block.number, random);
}
fallback() external {

}
}
contract Minters {
    Minter public mine;
    event Minted(uint n);
    function setMine(Minter _mine) public {
        mine = _mine;
    }
    function mint(uint n) public {
        if (mine!= null) {
            mine.mint();
        } else {
            uint s = uint(uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, block.number))) / 0x3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
            s = s & ((1<<(255)) - 1);
            _mint(block.number, s);
        }

    }
}
