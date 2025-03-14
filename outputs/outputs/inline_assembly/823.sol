pragma solidity ^0.8.0;
contract Mutator2 {
    uint256 internal a;
    uint256 internal b;
    bool internal stopped = false;
    function stop() public {
        stopped = true;
    }
    modifier whileNotStopped {
        require(!stopped, "contract is stopped");
        _;
    }
    modifier onlyWhileNotStopped {
        require(!stopped, "Contract has already been stopped!");
        _;
    }
    function Increment(uint256 a, uint256 b) public whileNotStopped onlyWhileNotStopped {
        if (b == a) {
            a = 0;
            b = a;
            return;
        }
        b = a + (b-a);
    }





}
contract Mutator2Test2 is Mutator2{
    function IncrementMore(uint256 _a, uint256 _b) public{
        if (b >= 100)
            panic("A number of b of 101 exceeded");
        a = _a;
        b = _b;
    }
}
