pragma solidity ^0.8.0;
contract Mutant_Mutation3 {
    Mintable public owner;
    Mintable public minter;
    bool public mutant;

    event Init(address _owner);

    constructor() {
        owner = initMintable();
        minter = initMintable();
        mutant = false;
    }

    function initMintable() Mintable {
        Mintable memory m = new Mintable();
        m.mint();
        return m;
    }

    function initMutant() Mintable {
        Mintable memory m = new Mintable();
        m.mint();
        return m;
    }

    modifier onlyOwner() {require(msg.sender == owner, "Caller must be owner of this instance"); _;}

    function setInitMutant(Mintable _owner) Mintable {
        require(owner == Mintable(0), "caller is not owner of the instance");
        owner.mint();
        minter.mint();
        owner = Mintable(_owner);
        minter = Mintable(_owner);
        mutant = true;
    }

    function setMutant() {
        if (!mutant) {
            owner.mint();
            minter.mint();
            owner = owner.transferFrom(this, minter, uint(owner.availableBalance()));
            minter = minter.transferFrom(this, owner, uint(minter.availableBalance()));
        }
    }

    function getOwner() view returns (Mintable memory) {
        return owner;
    }

    function getMinter() view returns (Mintable memory) {
        return minter;
    }

    function mint() {
        owner.updateWithBalance(addr(msg.sender), uint(owner.availableBalance()));
    }
}
