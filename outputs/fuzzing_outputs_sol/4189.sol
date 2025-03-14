pragma solidity ^0.8.0;
contract FallbackCallerMutated{
    function fallback() public payable{}
    uint[20000][10000] storage foo = new uint[](20000);
    uint[20000][10000] foo_old = foo;
}


contract BasicAccessControl {
    address private _owner;


    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);



    constructor (){
    _owner = msg.sender;
    emit OwnershipTransferred(address(0), _owner);
    }



    function owner() public view returns(address owner) {
        return _owner;
    }



    modifier onlyOwner() {
        require(isOwner(), "Caller is not the owner");
        _;
    }



    function isOwner() public view returns(bool owner) {
        return msg.sender == _owner;
    }



    function renounceOwnership() public onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }



    function transferOwnership(address newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }



    function _transferOwnership(address newOwner) internal {
        require(newOwner!= address(0), "newOwner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}
