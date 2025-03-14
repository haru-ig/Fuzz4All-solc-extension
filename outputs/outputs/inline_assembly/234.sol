pragma solidity ^0.8.0;
contract E12
{
    uint public balance = 100000000 * 1000000000000;
    address public owner;
    mapping(address => bool) public is_owner;
    uint public count;
    constructor(uint _x) public {
        owner = msg.sender;
        is_owner[owner] = true;
        count = 1;
    }
    function (address _owner, uint _val) public returns (bool ok) {
        if (_val == 0) {
            return false;
        }
        ok = false;
        if (is_owner[_owner]) {
            is_owner[_owner] = false;
            count += 1;
            ok = balance > 0? false : true;
        } else {
            uint m = min(100000000 / _owner, balance - count);
            balance -= m;
            count += m;
        }
        _;
    }
    function min(uint a, uint b) private pure returns (uint) {
        return a < b? a : b;
    }
    function () public payable {

    }
}
