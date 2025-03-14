pragma solidity ^0.8.0;
contract Mutator3(Mutator3 _parent)
{
    uint256 internal a;
    uint256 internal b;
    uint256 internal c;
    bool internal stopped = false;
    function stop() external {
        stopped = true;
    }
    function Increment() public {
        require(a == 2, "the parent contract");
        a = 42;
        b = a;
    }
    function IncrementMore() public {
        require(a == 2, "the parent contract");
        c = b + (b-1);
    }
}
