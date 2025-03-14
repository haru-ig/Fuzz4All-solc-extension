pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_11 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        uint256[] memory tmp;
        tmp = new uint256[](6 + 2);
        tmp[tmp.length] = 1;
        tmp[tmp.length + 2] = 2;
        size -= 2;
        size = 6;
        tmp[tmp.length - 2] = 2;
        tmp[tmp.length] = 0;
        field = tmp;
    }
}


pragma solidity ^0.4.20;
contract Solidity_0420_FunctionReturn {
    uint256 public x = 1;
    uint256 result;
    function f() public pure returns (uint256) {
        return 1;
    }
    function g() public pure returns (uint256) {
        uint256 a = 1;
        while (true) {
            return 1 + result;
        }
    }
    function h() public pure returns (uint256) {



        while (true) {
            return 1 + result;
        }
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_ContractStorageLayout {
    uint256 public size;
    mapping (uint256 => uint256) public x;
    constructor() public {
        size = 2;
    }
    function assignX() public {
        x[x.length] = 1;
        x[x.length + 1] = 0;
        size += 1;
    }
}
