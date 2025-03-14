pragma solidity ^0.8.0;
contract Mutator{
    uint256 internal a;
    uint256 aB;
    uint256 internal b;
    uint256 bA;
    uint256 internal stopped = false;
    uint256 internal aL;
    uint256 internal bL;
    uint256 constant aL_OVERFLOW = 0x777777777777777777777;
    uint256 constant bL_OVERFLOW = 0x7777777777777777778;
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
    function IncrementA(uint256 a) public onlyWhileNotStopped whileNotStopped{
        a = a + l(a);
    }
    function IncrementB(uint256 b) public onlyWhileNotStopped whileNotStopped{
        b = b + l(b);
    }
    function Increment(uint256 a, uint256 b) public whenNotStopped{
        IncrementA(a);
        IncrementB(b);
    }
    function l(uint256 x) public pure returns(uint256 z){
        byte memory mask = 0x7f;
        assembly {


            mstore(add(x, 0), and(mask, mload(add(x, 8))))
