pragma solidity ^0.8.0;
import "./Mutated.sol";
contract Mutated {
    function mutatedA(uint value) public {
        Mutated mut = Mutated(address(this));
        mut.mutateA(value);
    }
    function mutatedB(uint value) public {
        var mut = Mutated(address(this));
        mut.mutatedA(value);
    }
    function returnC() public view returns(uint) {
        Mutated mut = Mutated(address(this));
        return mut.returnC();
    }
    event Mutated(uint startTime, uint endTime);
}
