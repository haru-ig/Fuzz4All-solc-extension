pragma solidity ^0.8.0;


pragma solidity ^0.8.0;
contract Example
{


    modifier constructorHasNoChanges() {
        require(address(this).balance <= 5 ether, "You are above the limit!");
        _;
    }
    address[] internal storageArray;
    uint public balance;
    constructorHasNoChanges constructor(uint z) {
        storageArray = new address[](3);
        storageArray[0] = msg.sender;
        _z = z;
        _ = storageArray[0];
    }
    uint public _z;
    function getter(uint i) public pure returns (uint) {
        return _z;
    }
    function setter(uint i, uint z) public returns (uint) {
        return _z;
    }
}
