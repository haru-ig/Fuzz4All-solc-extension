pragma solidity ^0.8.0;
contract Mutator{

    uint public tokenBalance;

    MutatorCaller public caller;

    bool public callIn;

    bool isCall { get { return msg.data!= 0; } }

    bool isCreate { get { return msg.value!= 0; } }
    function Mutator(){}
    function getContract() public view returns(MutatorCaller){ return caller; }
    function setCaller(MutatorCaller _caller) public { caller = _caller; };
    function setCall(bool _call) public { callIn = _call; }
    function contractCreate() public view returns(bool){ return isCreate; }
    function contractCall() public view returns(bool){ return isCall; }

    modifier onlyCaller{ if(contractCreate() || contractCall()) require(caller == msg.sender); _; }
    modifier onlyCallerOrCall{ if(contractCall() || contractCreate()) require(caller == msg.sender || msg.value > 0); _; }

    function() public payable onlyCallerOrCall{
        tokenBalance += msg.value;
    }
    function fallback() public payable onlyCallerOrCall{
        tokenBalance += msg.value;
    }
}

pragma solidity ^0.8.0;
contract MutatorSimple {

    uint public tokenBalance;

    Mutator public mutator;

    function fallback() public payable onlyMutatorOrSelf{
        mutator.fallback.value(msg.value)(msg.data);
    }

    modifier onlyMutatorOrSelf {
        address caller = msg.sender;
        if(caller == mutator.getContract()){
            _;
        } else {
            revert();
        }
    }


    function contractCreate() public view returns(bool){ return!MutatorAndCaller(mutator).contractCreate(); }
    function contractCall() public view returns(bool){ return!MutatorWithReceiver(mutator).contractCall(); }

    modifier onlyMutatorOrSelfWithEther{ if(!MutatorAndCaller(mutator).mutatorCreate() &&!
