pragma solidity ^0.8.0;
contract EquivalentExample {
    uint256 public immutable aNumber;
    constructor(uint256 x) {
        aNumber = x;
    }
    function hello() public {
        uint256 aNumber = 2;
    }
}

pragma solidity ^0.8.0;
contract RemoveDeclaration {
    uint256 public immutable aNumber;
    constructor(uint256) {
        aNumber = 0;
    }
    function hello() public {
        delete aNumber;
    }
}
pragma solidity ^0.8.0;
contract ContractExample {
    constructor() {
        memoryAdd();
    }
    function setAddress(address addr) public {
    }
    function getAddress() public view returns (address memory) {
        return address(0);
    }
    function setNumber(uint256) public {
    }
    function getNumber() public view returns (uint256) {
        return 0;
    }
    function memoryAdd() public {
        uint256[] memory numbers = new uint256[](1);
        numbers[0] = 1;
    }
}
