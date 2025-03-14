pragma solidity ^0.8.0;
abstract contract Mutator {
    uint256 internal value;
    uint256 internal a = 0;
    uint256 internal b;
    uint256 internal c;
    uint256 internal e;
    bool internal stopped = false;
    uint256 internal constant decrementDelay = 9000;
    uint256 count;
    function stop() public {
        stopped = true;
        a++;
        if (a>=42) {
            a = 0;
        }
        if (a % 42 == 0) {
            a = 0;
        }
    }
    modifier onlyWhileNotStopped {
        require(!stopped, "Contract has already been stopped!");
        _;
    }
    function decrement() public onlyWhileNotStopped {
        if (a > 0) b--;
        else c --;
        a  -= 1;
        if (c>0) {
            c --;
        }
        if (count > 0) {
            if (a % 100 == 0) {
                count = 0;
            }
        }
    }
    function IncrementMore(uint256 a, uint256 b, uint256 c) public onlyWhileNotStopped {
        a++;
        b  += c;
        if (a % 100 == 0) {
            count = 0;
        }
    }
}
