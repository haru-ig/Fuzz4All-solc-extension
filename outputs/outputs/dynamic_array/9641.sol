pragma solidity ^0.8.0;
contract Main {
    mapping(uint256 => uint256) public mapFromArray;
    constructor () public {
        mapFromArray[1] = 1;
    }
    modifier set(uint _key, uint256 _value) {
        if (!mapFromArray[_key]) {
            mapFromArray[_key] = _value;
        }
        _;
    }
}
