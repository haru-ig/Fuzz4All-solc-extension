pragma solidity ^0.8.0;
contract Mutator4{
    uint256 internal a;
    uint256 internal b;
    uint256 internal c;
    uint256 internal d;
    bool internal stopped = false;
    assembly{
        calldatacopy(0x40,0x20,calldatasize())
        a := 3
        b := a
        c := a
    }
    modifier whileNotStopped {
        require(!stopped, "contract is stopped");
        _;
    }
    modifier onlyWhileNotStopped {
        require(!stopped, "Contract has already been stopped!");
        _;
    }
    function AssignMore(uint256 a, uint256 b, uint256 c, uint256 d) public onlyWhileNotStopped whileNotStopped noCopy(c, d) {
        a = a + b;
        b = a;
        c = a + c;
        d = b + d;
        a = a + c;
        b = a;
        c = d + a;
        a = d + a;
        b = c;
        c = d + b;

    }
}
