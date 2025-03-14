pragma solidity ^0.8.0;
contract Mutator4{
    uint256 internal a;
    uint256 internal b;
    uint256 internal c;
    bool internal stop = false;
    function stop() public {
        stop = true;
    }
    modifier whileNotStop() {
        require(!stop, "contract is stopped");
        _;
    }
    modifier onlyWhileNotStop() {
        require(!stop, "Contract has already been stopped");
        _;
    }
    function Increment(uint256 a, uint256 b) public whileNotStop onlyWhileNotStop {
        if (a < 2) {
            a = 2;
            b = a;
            return;
        }
        b = a + (b-1);
    }
    function IncrementMore(uint256 a, uint256 b) public whileNotStop onlyWhileNotStop {
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
