pragma solidity ^0.8.0;
contract ImmutableMutatedImmutable {
    address public immutable _owner;
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous;
        return _previous;
    }
    function _transfer(address _newOwner) public {

        emit OwnershipTransferred(_owner, _newOwner);
        _owner = _newOwner;
        emit OwnershipTransferred(_newOwner, _owner);
    }
}
contract MutatedImmutableMutated {
    address public immutable _owner;
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous;
        return _previous;
    }
    function _transfer(address _newOwner) public {

        emit OwnershipTransferred(_owner, _newOwner);
        _owner = _newOwner;
        emit OwnershipTransferred(_newOwner, _owner);
    }
}
contract ImmutableMutatedMutated {
    address public immutable _owner;
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        _previous;
        return _previous;
    }
    function _transfer(address _newOwner
