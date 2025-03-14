pragma solidity ^0.8.0;
contract Mute {
    mapping(address => uint32[]) m;
    uint32 index() public view returns(uint32){
        return m[msg.sender][0];
    }
    uint32[] public a;
    constructor(uint32 _a){
        a;
        mutateArray(a);
    }
}

pragma solidity ^0.8.0;
contract ConstructorArguments {
    address public owner;

    constructor(address _owner) public {
        owner = _owner;
    }

    function setOwner(address _newOwner) public returns(bool){
        if(msg.sender == owner) {
            owner = _newOwner;
            return true;
        }
        return false;
    }
}
