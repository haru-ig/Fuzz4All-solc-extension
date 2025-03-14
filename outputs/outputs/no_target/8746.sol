pragma solidity ^0.8.0;
contract EquivalentABIv08AbiV01MutableInterface {
    struct Mint {
        address minted;
    }

    mapping (address => Mint) public mints;
    function f() public {
        mints[(address(this))] = Mint({
            minted = address(this)
        });
    }
}
