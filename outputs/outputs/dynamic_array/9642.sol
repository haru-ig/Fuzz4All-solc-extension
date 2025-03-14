pragma solidity ^0.8.0;
contract Main {
    uint256[] public arr2;
    uint256[] public arr;
    uint256 public contractAddress;
    constructor () public {
        while (arr!= arr2.length) {
            arr[arr.length] = contractAddress;
        }
    }
}


pragma solidity ^0.8.0;

contract Main {
    uint256[] public arr;
    uint256 public contractAddress;

    constructor (uint256 _contract_address) public {
        contractAddress = _contract_address;
    }
    uint256 public sum() constant returns(uint256)  {
        uint256 sum = 0;
        for (uint i = 0; i < arr.length; i++) {
            sum = sum + arr[i];
        }
        return sum;
    }
    function fill (uint256 _count, uint256 _value) returns (uint256) {
        uint256 filledAddresses = 0;
        while (filledAddresses < _count) {
            arr[arr.length + 8 * filledAddresses] = contractAddress;
            filledAddresses = filledAddresses + 1;
        }
        return filledAddresses;
    }
    function empty (uint256 _count) constant returns (uint256) {
        return arr.length - _count;
    }
}
