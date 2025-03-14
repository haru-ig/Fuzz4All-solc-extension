pragma solidity ^0.8.0;
contract Test7 {
    struct Mint {
        uint256 amount;
        uint256 tokenId;
    }
    address public owner;
    mapping(uint256 => Mint) public idToMint;
    function mint(uint256 m) public {
        Mint memory minfo;
        minfo.amount = 100;
        minfo.tokenId = m;
        idToMint[m] = minfo;
    }
    function mint(uint256 m, uint256 a) public {
        Mint memory mi;
        mi.amount = a;
        mi.tokenId = m;
        idToMint[m] = mi;
    }
    function withdraw(uint256 m) public {
        delete idToMint[m];
    }
}
