pragma solidity ^0.8.0;
contract SimpleMutated {
    function shouldBeFalse() public view {
        assert(b);
        b = false;
    }
    bool public b = true;
}
