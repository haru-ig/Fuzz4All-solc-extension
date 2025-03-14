pragma solidity ^0.8.0;
interface MinterInterface {}
contract RevertibleMinter {
    event MinterCreated();
    event MinterReverted();
    function revert() external;
    constructor() external {

        minter = BasicMinter(address(this));
        emit MinterCreated();
    }

    function setMinter(MinterInterface minter_) external {
        minter = BasicMinter(minter_);
        emit MinterReverted();
    }
}
contract SimpleMinter {
    event MinterSet(MinterInterface indexed minter);

    interface BasicMinter {
        function setMinter(MinterInterface _minter_) external;
        function hasMinter() external view returns (bool);
        function getMinter() external view returns (MinterInterface);
    }
    MinterInterface internal minter;
    constructor(MinterInterface _minter) {
        setMinter(_minter);
    }
    function setMinter(MinterInterface _minter_) external {
        minter = _minter_;
        emit MinterSet(_minter_);
    }
}
