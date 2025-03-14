pragma solidity ^0.8.0;
contract MutatedStorage8 {

    using Proxy for address;
    uint public immutable num;
    constructor() public {
        uint storageValue;
        assembly {
            storageValue := num
        }
        num = storageValue;
    }
    function changeNumberAndIncrease() public {
        uint storageValue;
        assembly {
            storageValue := add(num, 1)
        }
        num = storageValue;
    }
    function addZeroOne() public {
        uint storageValue;
        assembly {
            storageValue := add(num, 2)
        }
        num = storageValue;
    }
}
