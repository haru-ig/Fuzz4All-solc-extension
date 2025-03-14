pragma solidity ^0.8.0;
contract Mutated {
    struct Data {
        uint256 foo;
    }

    address payable addr;
    Data memory d;

    mapping (uint => uint) values;

    function fTest(uint val) public {
        require(values[val] == 0, "foo");
        values[val] = 1;
        addr.transfer(msg.value);
    }
}
