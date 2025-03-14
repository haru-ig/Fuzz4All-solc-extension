pragma solidity ^0.8.0;
contract Mutated{
    address public modifier modifierMutated() {
        console.log("ModifierMutated function called");
        _;
        console.log("ModifierMutated function return");
    }
    modifier modifierNotMutated(address address1) {
        console.log("ModifierNotMutated function called");
        _;
        console.log("ModifierNotMutated function return");
    }
    contract Mutator{
        address public target;
        constructor(address _target){
            target=_target;
        }
        function setTarget(address _target) public {
            target=_target;
        }
    }
    Mutated _mutator;
    constructor(Mutator _mutator) {
        console.log("Mutated constructor");
        _mutator = _mutator;
    }
    function setTarget(address _target) public
    modifier modifierMutated(){
        console.log("ModifierMutated call with storage value");
        _;
        console.log("ModifierMutated return with return value");
        return;
    }
    function _transfer(address _from,address _to,uint _amount) public returns(uint) {
        console.log("Mutated function is called");
        return _amount;
    }
    function() public payable return { }
}
