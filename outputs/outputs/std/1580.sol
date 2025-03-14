pragma solidity ^0.8.0;
contract SemanticallyEquivApp {
    uint public constant _INT_ZERO = 0;
    uint public constant _UNSIGNED_MAX = uint256(2**256 - 1);
    uint public constant _DEFAULT_VALUE = 1 << 255;

    uint _value;
    uint _value2;

    function increment() public {
        _value++;
    }

    function incrementWithoutStorage() public {
        _value2++;
    }

    function printUnsigned(uint x) public view {
        x += 100;
        uint i = x - 100;
        require(i <= _UNSIGNED_MAX, "x is out of range");
    }

    function checkAndThrow(bool condition, string memory description) public {
        if (!condition) {
            throw Error(description);
        }
    }
}
