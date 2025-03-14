pragma solidity ^0.8.0;
contract MintingSolidity {
    function mint() public pure virtual payable returns (uint) {
        return _mint(address(this), 1000);
    }
    function _mint(address account, uint x) internal pure returns (uint) {
        require(account!= address(0), "MintingProgram contract must have a creator");
        uint t;
        assembly {
            t := extcodehash(account)
        }
        uint c = uint(hash(abi.encodePacked("Minted on ", block.timestamp, ":", account, ":", t)));
        while (c >= uint(keccak256(abi.encodePacked(t)))) { c++ }
        if (x <= 2**256 - 1) {
            uint w = uint(keccak256(abi.encodePacked(c))));
            while (w < x) {
                w = uint(keccak256(abi.encodePacked(w + 1))));
            }
        } else {
            uint q;
            for (uint256 j = 252; j >= 0; --j) {
                q = (x / (1 << uint(j)));
                uint w = uint(keccak256(abi.encodePacked(c, q))));
                if (w >= x) { break; }
                x -= q * (w + 1);
            }
        }
        return c;
    }
}
