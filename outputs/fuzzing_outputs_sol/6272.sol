pragma solidity ^0.8.0;
contract Mutant4Mutator {
    event Muted(address indexed addressCalling,
        address indexed mutant, address indexed mutant2);
    bool mutant;
    bool mutant2;
    mapping (address=>mapping (address=>uint)) public balanceOf;
    constructor() {}
    modifier onlyCaller() { require(msg.sender == address(this)); _; }
    function trigger() public { mutant = true; mutant2 = true; emit Muted(msg.sender, this.addressOfMutant(), this.addressOfMutant2()); }
    function mutantFunction() public payable {
        bytes memory data = abi.encodeWithSelector(IERC65999(0).getSelector(), msg.sender, 33);
        bytes calldata dataBytes = abi.encodeWithSelector(IERC65999(0).getSelector(), msg.sender, 222);
        require(block.timestamp > 1, "The function trigger should not be called before the second time of the mutant.");
        balanceOf[msg.sender][address(0)] = dataBytes.value;
        if (mutant) {
            mutant = false;
        }
        if (mutant2) {
            mutant2 = false;
            emit Muted(msg.sender, this.addressOfMutant(), this.addressOfMutant2());
        }
    }
    function addressOfMutant() public returns(address) { return address(this).resolveAddress('1'.repeat(256), 0); }
    function addressOfMutant2() public returns(address) { return address(this).resolveAddress('2'.repeat(256), 1); }
    function callToOtherMutant(address mutant) public { require(msg.sender == mutant); _; }
}
