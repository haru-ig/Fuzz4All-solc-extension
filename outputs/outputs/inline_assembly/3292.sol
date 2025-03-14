pragma solidity ^0.8.0;

contract Mutate {
    address payable public _address;
    uint public _amount;
    uint[] public _array;

    constructor(uint amt, uint[7] memory _arry) {
        _address = payable(msg.sender);
        _amount = amt;
        _array = _arry;
    }

    function mutate() {
        _address.transfer(_amount);
        _array[6] = 0xffffffffffffffff;
    }
}
```
```Solidity
pragma solidity >= 0.6.0 < 0.8.0;

library Access {



    struct AccessStore {
        bytes32 data;

        function getData() public view returns (bytes32);
    }

    function setData(bytes32 key, bytes32 value) internal {

    }

    function getData(bytes32 key) public view returns (bytes32) {

    }
}
```
