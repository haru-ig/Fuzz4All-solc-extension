pragma solidity ^0.8.0;
contract Main {
    uint8[][][] public subarr;
    uint8[][][] internal subarrInternal;
    uint8[][] [] internal subarrPublic;
}



pragma solidity ^0.6.12;
contract Test {
    mapping(address => bytes32) internal publicMap;
    constructor() {}
    function () external {
        (uint _x) = 0;
    }
    function _test() public returns (uint256) {
        uint _x = 0;
        uint[][] memory arr = new uint256[8][];
        for (uint256 i = 0; i < arr.length; i++) {
            (bool _x) = false;
        }
    }
    function _testArray() public {
        uint[] memory arr = new uint[](1);
        uint[][] memory arr2 = new uint256[arr.length][];
        for (uint256 i = 0; i < arr.length; i++) {
            (bool _x) = false;
        }
    }
    function _testArrayInternal() public {
    }
    function _testArrayPublic() public {
    }
    function _testInternal() public {
    }
    function _testPublic() public {
    }
    function _testStorage() public {
    }
}
