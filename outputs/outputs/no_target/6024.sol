pragma solidity ^0.8.0;
contract Owned {
    address owner_;
    function setOwner(address o) public {
        owner_ = o;
    }
    function owner() public returns (address) {
        return owner_;
    }
}
contract Mod {
    function isAddressNonZero(address _myAddress) public returns (bool) {
       return _myAddress!= 0x00000000000000000000;
    }
    function isMyStructZero(bytes32 _myAddress) public returns (bool) {
       return (keccak256(abi.encodePacked(Lib.MyStruct)) > 0);
    }
}
contract Main {
    using Mod for uint256;
    Owned contractOwner;
    function setOwner() public {
        contractOwner.setOwner(msg.sender);
    }
    function owner() public view returns (address) {
        return contractOwner.owner();
    }
    function setAddressNonZero() public {
        address _addr = msg.sender;
        require(isAddressNonZero(_addr),"Addr is not zero.");
        _addr;
    }
    function setMyStructZero() public {
        bytes32 _bytes32 = keccak256(abi.encodePacked(Lib.MyStruct));
        require (isMyStructZero(_bytes32),"My struct not zero.");
        _bytes32;
    }
}
