pragma solidity ^0.8.0;
contract TestMutated723 {
    string log0;
    function next() public {
        assert(!msg.value);
        log0 = "foo";
    }
    function set(uint number) public {
        call_set(number);
    }
    function call_set(uint number) private {
        uint y;
        (y, uint) memory z = mul(number, 2);
    }
}
