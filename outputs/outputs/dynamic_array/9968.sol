pragma solidity ^0.8.0;
contract SemanticTest4 {
    uint[] private data;
    constructor() {}
    function getIndex() public view returns (uint) {
        return data[index];
    }
    function pushData(uint val) public {
        data.push(val);
    }
}


pragma solidity ^0.8.0;
contract SemanticTest5 {
    mapping(uint => uint) private data;
    constructor() public {
        data[10] -= 40;
    }
    function getData(uint index) public view returns (uint) {
        return data[index];
    }
    function push() public {
        data[10] += 100;
    }
    function getIndexOf(uint val) public view returns (uint) {
        return data[val];
    }
}



pragma solidity ^0.8.0;
contract SemanticTest6 {
    mapping(address => bool) private data;
    constructor() public {
        data[address(this)] = true;
    }
    mapping(address => bool) private addressMap;
    function isAddress(address addr) public view returns (bool) {
        if (addr in addressMap) {
            return true;
        }
        return false;
    }
    function setAddress(mapping(address => bool) memory _addressMap) public {
        addressMap = _addressMap;
    }
}

pragma solidity ^0.8.0;
contract SemanticTest7 {
    mapping(address => uint256) private memoryData;
    function getData() public view returns (uint256) {
        return memoryData[msg.sender];
    }
    function pushData(uint256 val) public {
        memoryData[msg.sender] = val;
    }
}
