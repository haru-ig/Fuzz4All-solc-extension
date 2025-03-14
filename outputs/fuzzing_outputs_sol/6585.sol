pragma solidity ^0.8.0;
contract Caller {
    uint constant private val = 1;
    uint private lastSet = 0;
    function set() public view returns(uint) {
        return lastSet;
    }
    function set_with_check(uint _x) public {
        uint x = lastSet == 0? _x : uint(lastSet);
        uint lastSetChanged = lastSet!= x;
        bool checkIfFailed;
        unchecked {
            checkIfFailed = uint(_x) > 0;
            _;
        }
        if (checkIfFailed) {
            revert();
        } else {
            lastSet = x;
            lastSetChanged;
        }
    }
    function failIf() public payable {
        if (msg.value == 25 ether) {
            revert();
        }
    }
}
