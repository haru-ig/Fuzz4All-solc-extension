pragma solidity ^0.8.0;
contract Mutator6 {
    constructor() public {}

    function testMethod(uint256 i) public {
        i++;
    }
}

pragma solidity ^0.8.0;
contract Mutator7 {
    constructor() public {}

    function set(uint256 a, uint256 b) public {
        b = b * 2;
    }

    function mutated(uint256 a, uint256 b) public view returns (uint256) {
        b = b * 2;
        return b;
    }
}

pragma solidity ^0.8.0;
contract Mutator8 {
    constructor() public {}

    function set(address a, address b) public {
        b = a;
    }

    function mutated(address a, address b) public view returns(address) {
        b = a;
        return b;
    }
}
