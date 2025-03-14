pragma solidity ^0.8.0;
contract Mutator6 {
    uint256 internal a;
    uint256 internal b;
    uint256 internal c;
    bool internal stopped = false;
    uint256 count = 0;
    bool public paused;


    modifier whileNotStopped {
        require(!stopped, "contract is stopped");
        _;
    }
    modifier whilePaused {
        require(paused, "contract is paused");
        _;
    }
    modifier whileNotPaused {
        require(!paused, "Contract is already paused!");
        _;
    }
    function increment(uint256 a, uint256 b, uint256 c) public whileNotStopped onlyWhileNotStopped  {
        a++;
        if (count > 0 && a % 1000 == 0) {
            count = 0;
        }
        b++;
    }

    function incrementMore(uint256 a, uint256 b, uint256 c) public whileNotStopped onlyWhileNotStopped  {
        a++;
        ++count;
        if (count > 0 && a % 1000 == 0) {
            count = 0;
        }
        b++;

    }


    modifier onlyWhileStopped {
        require(stopped, "Contract has not been stopped!");
        _;
    }
    function pause() public whileNotStopped  {
        paused = true;
    }
    function unpause() public whileNotStopped  {
        paused = false;
    }
}
