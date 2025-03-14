pragma solidity ^0.8.0;
contract Modification
{
    uint256 value_;
    constructor (uint256 value) {
        value_ = value;
    }
    function modify() public {
        value_ += 1;
    }
    function run() public {
        modify();
        modifier test {
            assert(value_ == 3);
            assert(msg.value == 6 );
            _ ;
        }
        test {
            fallback();
        }
    }
}
