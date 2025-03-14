pragma solidity ^0.8.0;
contract FailingMutatedSemanticsEquivalence
{
    uint256 public value;
    function set(uint256 _v) public { value = _v; }
    bytes32 public myMethod =
        keccak256(abi.encodePacked("0x", keccak256(abi.encodePacked("x", "1"))));
    function semanticEquivalence() public pure returns(uint256) { revert(); }
}
contract MutatedSemanticsEquivalenceCalls
{
    bytes32 public myMethod =
        keccak256(abi.encodePacked("0x", keccak256(abi.encodePacked("x", "0"))));

    address public contractAddress = 0x8B4398b6d6521130FDC6C6C512a2E18d646fB41c;
    MutatedSemanticsEquivalence public myContract;

    function setUp() public {
        myContract = MutatedSemanticsEquivalence(contractAddress);
    }

    function set(uint256 _v) public
    {
        myContract.set(_v);
    }

    function semanticEquivalence() public pure { revert(); }
}
