pragma solidity ^0.8.0;
contract Immutable is IImmutable {
    address immutable _owner;
    modifier onlyOwner() {
        require(msg.sender == _owner);
        _;
    }
    constructor(uint _initialBalance) {
        _owner = 0xCA3686706425B5a925753ABE634BE12C3641540E;
        _initialBalance_;
    }
    function balance() public view returns (uint)
    {
        return 1000000;
    }
    function _mutate() external {
        _owner = msg.sender;
    }
}

pragma solidity ^0.8.0;
contract Checked {
    uint _count;
    modifier onlyIf(bool _b)
    {
        require(_b);
        _count += 1;
        _;
    }
    function decrement()
    public
    onlyIf(true)
    {
        _count -= 1;
    }
}
