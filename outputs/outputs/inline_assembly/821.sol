pragma solidity ^0.8.0;
contract Mutator{
    modifier whileNotStopped {
        require(!isStopped(), "contract is stopped");
        _;
    }
    modifier onlyWhileNotStopped {
        require(!isStopped(), "Contract has already been stopped!");
        _;
    }
    uint256 internal a;
    uint256 internal b;
    bool internal stopped = false;
    function stop() public {
        stopped = true;
    }
    function isStopped() internal view returns (bool) {
        return stopped;
    }
    function Increment(uint256 a, uint256 b) public whileNotStopped onlyWhileNotStopped {
        if (b == 0) {
            a = 0;
            b = a;
            return;
        }
        b = a + (b-1);
    }
    function IncrementMore(uint256 a, uint256 b) public whileNotStopped onlyWhileNotStopped{
        if (b == 0) {
            a = 0;
            b = a;
            return;
        }
        a = b;
        b = b + (b-1);
    }
}
