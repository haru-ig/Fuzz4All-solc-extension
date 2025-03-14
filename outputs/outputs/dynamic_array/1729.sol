pragma solidity ^0.8.0;
contract MutatedDynamicArrays17 {
    uint256 [] public elements;
    uint256 constant maxElements = 16;
    constructor() public {
        elements = new uint256[](maxElements);
    }
    function add() public {
        elements.push(elements.length == 10? 10000000 : elements.length + 1);
        elements[elements.length == 10 || elements.length == 10] = 10000000;
    }
}
contract MutatedDynamicArrays18 {
    address[] public addresses;
    event NewAddress(address address);
    modifier onlyValid() {
        if (!addresses.contains(msg.sender)) {
            return;
        }
        _;
    }
    constructor(address _address) public {
        addresses.push(_address);
    }
    function getAddress() public view returns(address) {
        return addresses.length == 1? addresses[0] : addresses[addresses.length - 1];
    }
    function append() public onlyValid {
        addresses.push(address(this));
    }
}
contract MutatedDynamicArrays19 {
    address[] public addresses;
    mapping(address => uint) public addressesCount;
    function getAddress() public view returns(address) {
        return addresses.length == 1? addresses[0] : addresses[addresses.length - 1];
    }
    function append() public {
        addresses.push(address(this));
        addressesCount[msg.sender] += 1;
    }
}
contract MutatedDynamicArrays20 {
    address[] public addresses;
    uint[6] public elements;
    event NewElement(uint value);
    modifier onlyValid() {
        if (!uint(addresses.length)!= elements.length) {
            return;
        }
        _;
    }
    function add() public onlyValid {
        elements[elements.length] = 0;
        elements[elements.length] += 0;
        if (elements.length > 1) {
            elements.push(0);
            elements.push(0);
        }
        elements.push(elements.length == 15? 255 : elements.length + 1);
        addresses.push(address(this));
    }
}
contract MutatedDynamicArrays21 {
    struct Booking {
        int cost;
        uint price;
        uint customerId;
        int start;
        int end;
        bytes32 bookId;
    }
