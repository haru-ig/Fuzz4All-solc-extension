pragma solidity ^0.8.0;
contract Mutator6 {
    uint256 a;
    uint256 internal b;
    uint256 internal c;
    bool internal stopped = false;
    uint256 count = 0;
    Mutator5 junk;

    modifier whileNotStopped {
        require(!stopped, "contract is stopped");
        _;
    }
    modifier onlyWhileNotStopped {
        require(!stopped, "Contract has already been stopped!");
        _;
    }
    function Mutate(Mutator5 junk2) public whileNotStopped {
        junk = Mutator5(junk2);
    }
    function Mutator5(Mutator5 junk1) public {
        c = b * 10 + a;
        a = 2 + junk1.Increment(45, 666);
        b = 66 - junk1.IncrementMore(a, a);
    }
}
