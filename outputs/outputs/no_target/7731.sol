pragma solidity ^0.8.0;
contract Bar {
    uint8 public x;






    mapping(string => address) stringMap;

    constructor(string memory name, string memory _x) {
        stringMap[name] = msg.sender;
        x = 0xFF & bytes(uint8(_name), uint8(_x));
    }

    function bar() public pure returns (uint8) {
        return x;
    }
}


pragma solidity ^0.8.0;
contract Bar {





    mapping(address => address[]) public stringMap;

    constructor(address  _address, uint8 _address2) {
        stringMap[_address2].push(_address);
    }

    function bar(uint8 _a) public pure {
        assert(0xFFFFFFFF00000001 >= _a);
    }

    function bar2(uint8 _a, uint8 _b) public pure {
        assert(0xFFFFFFFF00000001 >= _a);
        assert(0xFFFFFFFF00000001 >= _b);
    }
}
