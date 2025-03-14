pragma solidity ^0.8.0;
import "./Mutator.sol";
contract mutatedMutator {
    address payable public caller;
    Mutator public mutator;
    function setCaller(address payable _caller) public {
        caller = _caller;
    }
    function setMutator(address payable _mutator) public {
        mutator = Mutator(_mutator);
    }
    function setFuncCaller(address payable _caller) public {
        mutator.setCaller(_caller);
    }
    function setFuncMutator(address payable _mutator) public {
        mutator.setMutator(_mutator);
    }
    function testCallFunction() public payable {

        caller.transfer(47);

        mutator.setFuncCaller(caller);

        mutator.setFuncMutator(caller);

        caller.transfer(47);
      }
}
