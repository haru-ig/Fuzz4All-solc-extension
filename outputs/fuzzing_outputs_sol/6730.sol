pragma solidity ^0.8.0;
import "../mutators/Mutator.sol";
contract Mutated {
    Mutator public constant mutator = Mutator(0x3);
    function __init__() public {
        mutator.Mut(1);
    }
}
contract MutatorFallback {
    function Mut(uint a) public {}
    function Mut1(address a) public payable {}
    function Mut2(address a) public override payable {}
}
contract FallbackTest {
    MutatorFallback public constant fallbackMutator = MutatorFallback(0x4);
    function __init__() public {
        fallbackMutator.Mut(1);
    }
}
contract Caller {
    function Call(address a, uint b) public {
        a.call{value: b}("");
    }
}
contract FallbackCaller {
    Caller public constant mutator = Caller(0x5);
    function __init__() public {
        mutator.Call(fallbackMutator, 1);
    }
}
@title Example of Contract with Fallback Function
@author <NAME>

Contract(Caller, MutatorFallback, FallbackCaller)
@constant(payable=true) private constant defaultFallbackValue = 10;
function __init__() private { }
mapping (address => uint) public data;
function Mut1(address a) public payable {}
contract MutatorFallbackImpl {
    function Mut1() public {
        emit Mut1Log();
    }
    event Mut1Log();
    function Mut2(address a) public override payable {}
}
