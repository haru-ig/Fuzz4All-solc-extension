pragma solidity ^0.8.0;
contract SimpleStorage {
    address private _owner;
    address public owner() {
        return _owner;
    }
    modifier onlyOwner() {
        if (msg.sender!= _owner) {
            revert();
        }
        _;
    }
    function changeOwnership(address _newOwner) public onlyOwner {
        _owner = _newOwner;
    }
}
pragma solidity ^0.8.0;
