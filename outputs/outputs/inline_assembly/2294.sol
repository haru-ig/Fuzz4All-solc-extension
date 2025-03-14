pragma solidity ^0.8.0;
contract Mutation2
{
    address public a;
    constructor(address b_) {
        a = b_;
    }
    function update(address b_) public {
        a = b_;
    }
}
contract Mutation3
{
    address public a;
    bytes32 public b;
    uint public c;
    constructor (uint _b, address _a) {
      a = _a;
      b = bytes32(_b);
    }
    function update() public {
        c = c;
    }
}
contract Mutant
{
    function mutantFunctionA(address _a) public returns (address) {
        return _a;
    }
    function mutantFunctionB(address _a) public returns (address) {
        return _a;
    }
    function mutantFunctionD() public {
        (bool success, ) = address(0x1).delegatecall(abi.encodeWithSelector(keccak256("toString()")));
        require(success,"Failed");
        assert(1 == 1);
    }
}
