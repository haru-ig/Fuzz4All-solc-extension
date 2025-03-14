pragma solidity ^0.8.0;
contract GangContract {
    struct GangStruct {
        address busterAttacker;
        uint256 valueOfBuster;
        bool gangAttackerCloned;
        address clonableTarget;
        uint256 valueOfClonableTarget;
    }

    address[] public gang;

    mapping(address => bool) public isGangclonable;

    uint256 public valueOfBuster;

    constructor(address _busterAttacker, uint256 _valueOfBuster) public {
        gang.push(address(this));
        valueOfBuster = _valueOfBuster;
    }

    modifier onlyGangclonableTarget(address _target) {
        isGangclonable[_target] = true;
        _;
        isGangclonable[_target] = false;
    }

    modifier onlyTarget() {
        require(msg.sender == gang[0], "Must be contract owner");
        _;
    }






    function gangAttack(address _target)
        public
        onlyTarget
        returns (bool)
    {
        bool attackerClonedSelf = false;
        bool targetClonedSelf = false;
        for (uint256 i = 0; i < gang.length; i++) {
            GangStruct memory gangStruct = gang[i];
            address busterAttacker = gangStruct.busterAttacker;
            require(_target!= busterAttacker, "Target cannot be current gangclonable target");
            require(
                isGangclonable[msg.sender] && isGangclonable[busterAttacker] &&
                gangStruct.busterAttackerCloned == false,
                "Buster is already the winner of this gang. Attackers can't have more than one target"
            );
            gangStruct.busterAttackerCloned = true;
            bool attackSucceeded;
            (attackSucceeded,) = target.call{value: gasleft()}(
                abi.encodeWithSignature("clonableTarget.myFunction()", msg.sender)
            );
            if (attackSucceeded)
