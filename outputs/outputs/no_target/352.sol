pragma solidity ^0.8.0;
contract Semantics {
    uint public value;

    function balance() public pure returns(uint) {
        return 10000 * value;
    }
}

pragma solidity ^0.8.0;
contract Semantics {
    uint public value;

    function balance() public pure returns(uint) {
        return 20000 * value;
    }

    function changeValue(uint x) public returns(bool) {
        value = x;
        return true;
    }
}
