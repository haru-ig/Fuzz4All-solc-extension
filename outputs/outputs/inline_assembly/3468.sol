pragma solidity ^0.8.0;
contract ChangeMutagenMod1 {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    uint constant FOUR = 4;
    modifier onlySet(uint _value) {
        assert(_value == ZERO);
        _;
    }
    function change (uint _value) public onlySet(_value) {
        _value = ZERO;
        _value = ZERO;
        _value = ZERO;
        _value = ZERO;
    }
}

contract Dapp2ChangeMutagen is ChangeMutagenMod1, ChangeMutagenMod2 {
    constructor() {
        require(keccak256(abi.encodePacked(CHANGE_MUTAGEN_ADDRESS)) == CHANGE_MUTAGEN_ADDRESS, "The address of this contract does not match ChangeMutagen: ADDRESS");
        change(ONE);
        assert(change2(TWO) == TWO);
        assert(change2(THREE) == THREE);
    }
}

contract SimpleContract2ChangeMutagen is ChangeMutagenMod1, ChangeMutagenMod2 {
    function get2() public pure virtual returns (uint) {
        return ZERO;
    }
}
