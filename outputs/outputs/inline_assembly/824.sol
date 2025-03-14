pragma solidity ^0.8.0;
contract Mutator3{
    uint256 internal a;
    uint256 internal b;
    uint256 internal c;
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
        if (a < 2) {
            a = 2;
            b = a;
            return;
        }
        b = a + (b-1);
    }
    function IncrementMore(uint256 a, uint256 b) public whileNotStopped onlyWhileNotStopped {
        if (a < 2) {
            a = 2;
            b = a;
            return;
        }
        if (b < 2) {
            b = a + (b-1);
            c = b;
            return;
        }
        a = b;
        b = b + (b-1);
    }
}
