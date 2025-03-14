pragma solidity ^0.8.0;
contract SimpleMutation {
    uint private number;

    function () external payable {}

    function () public payable {}

    function () external payable {
        number = 0;
    }

    function set(uint _number) public {
        number = _number;
    }

    function get() public view returns(uint) {
        return number;
    }

    function test() public view {
        number = 0;
    }
}
