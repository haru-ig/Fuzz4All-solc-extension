pragma solidity ^0.8.0;
contract Mutated {
    function getBalance(address _address) public view returns (uint) {

        string memory _str;
        uint balance;
        assembly {
        _str := mload(0x40)
        balance := mload(add(_address, 0x20))
    }
        return uint(abi.decode(_str, (uint)));
    }
}
