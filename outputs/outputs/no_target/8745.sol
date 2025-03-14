pragma solidity ^0.8.0;
contract EquivalentABIv08AbiV01Contract is EquivalentABIv08AbiV01ImmutableInterface {
    constructor() {
        mints[(address(this))] = address(this);
    }
}
contract EquivalentABIv08AbiV2Contract is EquivalentABIv08AbiV01ImmutableInterface {
    modifier onlyMint {

        break;
    }
    function() public payable onlyMint {}
}
