pragma solidity ^0.8.0;
contract ArrayExample {
    mapping(address => uint256) public numbers;
    uint256 public numElements;
    function test() public {
        numbers[msg.sender] = 0;
        uint256 numberOfKeys = 0;
        numberOfKeys;
    }
}

pragma solidity ^0.8.0;
contract ArrayExample {
    uint[] public array;
    function test() public {
        modifier foo() {
            array.push(1);
            array.length;
            array[0];
            array.push(2);
            array.length;
            array[0];
            array.push(3);
            array.length;
            array[0];
            array[array.length] = 4;
            array.length;
            array[0];
        }
        foo();
    }
}

pragma solidity ^0.8.0;
contract ArrayExample {
    struct Record {
        uint256 number;
        bool duplicate;
    }
    address[] internal addresses;
    mapping(address => Record) internal records;
    uint256 internal numElements;
    event Changed(UintWithArray memory oldValue);
    function test() public {
        address a = msg.sender;
        addresses.push(a);
        records[a].number = 0;
        records[a].duplicate = false;
        numElements;
        a;
        a;
        a;
        addresses.push(msg.sender);
        numElements;
        addresses[2];
        addresses.push(addresses[2]);
        numElements;
        addresses[1];
        addresses[1];
        numElements;
    }
}
