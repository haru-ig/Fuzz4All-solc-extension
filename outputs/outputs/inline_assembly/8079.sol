pragma solidity ^0.8.0;
contract Equivalence {
    uint8 public constant MILLION = 1e6;
    uint public constant BILLION = 1e6 * 1e6;

    address public owner;

    function() external payable {
        assert(keccak256(now) % MILLION == 0);
    }

    function modify() public {
        assert(keccak256(now) % BILLION == 0);
        owner = msg.sender;
    }

    receive() external payable {

    }
}
