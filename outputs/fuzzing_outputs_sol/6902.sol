pragma solidity ^0.8.0;
library SafeMath {
    function add(uint a, uint b) internal pure returns (uint) {
        uint c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }
    function subtract(uint a, uint b) internal pure returns (uint) {
        require(b <= a, "SafeMath: subtraction overflow");
        uint c = a - b;

        return c;
    }
    function multiply(uint a, uint b) internal pure returns (uint) {
        if (a == 0) {
            return 0;
        }

        uint c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }
    function div(uint a, uint b) internal pure returns (uint) {
        return multiply(a, 1) / b;
    }
    function modulo(uint a, uint b) internal pure returns (uint) {
        require(b!= 0, "SafeMath: modulo by 0");
        return add(a, div(a, b));
    }
}

pragma solidity ^0.8.0;
contract C {
    function _doit() public pure {
    }
    function doit() public returns(uint) {
        if (!keccak256(bytes(uint256(0)) - bytes(_doit))) {
            return 0;
        } else {
            return 8;
        }
    }
}

pragma solidity ^0.8.0;
contract C {
    constructor() {}
}

pragma solidity ^0.8.0;
contract C {
    bytes32 private constant _bytes32 = 'bytes32';
    address private constant _contractAddress1 = address(uint256(-100));
    address private constant _contractAddress2 = address(33);
    bytes32 constant _invalidContractAddress = _bytes32;
    uint256 constant _number = 42;

    constructor() public {}
}

pragma solidity ^0.8.0;
contract C {
    bytes32 private constant _bytes32 = 'bytes32';
    address private constant _contractAddress1 = address(uint256(-100));
    address private constant _contractAddress2 = address(33);
    bytes32 constant _invalidContractAddress = _bytes32;
    uint256 constant _number = 42;

    event LogContractAddress(bytes32 contractAddress0, bytes
