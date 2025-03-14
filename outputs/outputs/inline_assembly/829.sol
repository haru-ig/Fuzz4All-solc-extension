pragma solidity ^0.8.0;
contract Mutator4{
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
        uint256 temp = (a > b)? a : b;
        a = a + b;
        b = b - temp;
    }
    function IncrementMore(uint256 a, uint256 b) public whileNotStopped onlyWhileNotStopped {





        uint256 temp = (a > b)? a : b;
        uint256 temp2 = (b > a)? b : a;
        a = a + b;
        b = b - temp;
        c = a + (b-a-1);
    }
}
