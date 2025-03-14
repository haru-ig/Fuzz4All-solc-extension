pragma solidity ^0.8.0;
contract Modifiable {
    uint public val;
    function initialize(uint i_) public { val = i_; }
}
pragma solidity >=0.7.0 <0.8.0;
contract Contract {
    uint256 private value_;
    uint256 public constant constantVal = 57;
    function Contract() public { value_ = constantVal; }
    function _set(uint i) public { value_ = i; }
}
contract ModifiableToContract {
    uint256 private value_;

    event Changed(uint256);
    constructor() internal { }
    modifier hasCall() {
        _check();
        _;
    }
    function _check() private view { require(msg.value >= val());
    function _set(uint i) public hasCall onlyWhitelistedContract { value_ = i; }
    function val() public view returns (uint256) { return value_; }
    function set(uint i) public { _set(i); }
}
contract WhitelistedContract {
    address calldata whitelistedContract_;
    modifier onlyWhitelistedContract { require(address(whitelistedContract_) == msg.sender, "notWhitelisted"); _; }
    constructor(address i_) public { whitelistedContract_ = i_; }
}
contract ModifiableWithContract {
    uint256 public constant constantVal = 26;
    ModifiableToContract to_;
    function _set(uint i) public { to_.set(i); }
    constructor(ModifiableToContract i_) public { to_ = i_; }
}

pragma solidity >=0.7.0 <0.8.0;
contract ModifiableToContract {
    uint val_;
    event Changed(uint val);

    constructor() internal { }

    modifier onlyWhitelistedContract {
        require(msg.sender == whitelistedContract_, "notWhitelisted");
        _;
    }

    function _checkVal() private pure {
        require(val_ >= constantVal, "notEnoughEther");
    }

    function _check() private view {
        uint256 i256;
        assembly { i256 := mload(0x40) }
        _checkVal();
        require(value == i256, "mload");
    }

    function _set(uint i) public onlyWhitelistedContract { value = i; }

    function val() public view returns (uint256) { return value; }

    function set(uint i) public { value = i; }
}

pragma solidity >=0.7.0 <0.8.0;
contract ModifiableWithContract {
    ModifiableToContract to_;
    uint256 public
