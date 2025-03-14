pragma solidity ^0.8.0;
contract Mutator5 {
    uint256 internal a;
    uint256 internal b;
    uint256 internal c;
    bool internal stopped = false;
    uint256 count = 0;
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
        a++;

        if (count > 0 && a % 1000 == 0) {
        count = 0;
        }
    }
    function IncrementMore(uint256 a, uint256 b) public whileNotStopped onlyWhileNotStopped {
        a++;
        ++count;
        if (count > 0 && a % 1000 == 0) {
            count = 0;
        }
    }
}
