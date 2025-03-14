pragma solidity ^0.8.0;
contract Contract {
    uint256 empty_uint;
    bool empty_bool;
}


pragma solidity ^0.8.0;
contract Contract {

    function testEmptyUint() public pure returns(uint256) {
        return empty_uint;
    }


    function testEmptyBool() public pure returns(bool) {
        return empty_bool;
    }
}

contract Test {
    uint256 constant empty_uint = 42;
    bool constant empty_bool = false;

    constructor(uint256 value_) {
        empty_uint;
        empty_bool;
    }
}

contract OtherTest {
    uint256 constant empty_uint = 42;

    constructor(bool value_) {
        empty_uint;
    }
}
