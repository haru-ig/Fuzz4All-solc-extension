pragma solidity ^0.8.0;
contract A {
    address internal _ownable;
    uint256 public _version = 2;
    constructor () {
        _ownable = msg.sender;
    }
    modifierOwnable() {
        require(msg.sender == _ownable);
        _;
    }
    bool is_ownable() external view returns (bool) {
        return _ownable == msg.sender;
    }
    modifier onlyOwnable() {
        require(is_ownable());
        _;
    }
    function _checkVersionAndCaller() internal view {
        require(_version == 2, "Incorrect version");
        require(msg.sender == _ownable, "Not the owner");
    }
}
contract B is A {
    constructor () {}
    modifier onlyOwnable() {
        _checkVersionAndCaller();
        A.onlyOwnable();
        _;
    }
    function transferOwnership(address newOwner) external onlyOwnable {
        _ownable = newOwner;
    }
}
contract Test is B {
    bytes32 public _contractAddress;
    constructor ()
    contract B is A {
        constructor () {
            _contractAddress = type(A).compile().destination;
            _version = 2;
        }
        modifier onlyOwnable() {
            _checkVersionAndCaller();
            B.onlyOwnable();
            _;
        }
        function transferOwnership(address newOwner) external onlyOwnable {
            _ownable = newOwner;
        }
    }
}
