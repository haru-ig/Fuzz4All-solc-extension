pragma solidity ^0.8.0;
contract MutateMe {
    function getFirst() internal view returns (uint) {
        return 84;
    }
    function getSecond() internal view returns (string memory) {
        return "a string";
    }
    mapping (address => uint) private _addressToUint;
    constructor (uint newFirst, string memory newSecond) {
        _addressToUint[_msgSender()] = newFirst;
        _addressToUint[_msgSender()] = newSecond;
    }
    function getThird(string memory arg) internal view returns (uint) {
        return _addressToUint[_msgSender()].add(1);
    }

    function getFourth(uint8 f) public view returns (uint) { }
}
