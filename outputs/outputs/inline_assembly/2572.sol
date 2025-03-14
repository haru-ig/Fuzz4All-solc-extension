pragma solidity ^0.8.0;
contract Comp{
    uint256 private _storagePrivate;
    uint256 public _storagePublic;
    function __Comp_init() internal pure returns (uint256) {
        return 0;
    }
    constructor() public {
        _storagePrivate = getPrivate();
        _storagePublic = getPublic();
    }
    function test() public {
        setPrivate(_storagePrivate + getPrivate());
        setPublic(_storagePublic + getPublic());
    }
    function getPrivate() public view returns (uint32) {
        return _storagePrivate;
    }
    function setPrivate(uint256 _val) public returns (uint256) {
        _storagePrivate = _val;
        return (privateValue);
    }
    function getPublic() public view returns (uint256) {
        return (internalStorage());
    }
    function setPublic(uint256 _val) public returns (uint256) {
        _storagePublic = _val;
        return (internalStorage);
    }
    function internalStorage() internal view returns (uint256) {
        return _storagePrivate;
    }
}
