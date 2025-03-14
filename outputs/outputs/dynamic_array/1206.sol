pragma solidity ^0.8.0;
contract OverwrittenSemanticIndependenceMutations {
    mapping(address => uint) public accounts;
}

contract OverwrittenSemanticIndependenceInterface {
    function isEqual(address x, address y) external pure returns(bool);
}

contract SemanticIndependence {
    using OverwrittenSemanticIndependenceInterface for address;
    address private owner;

    event LogOwnerTransferred(address indexed _oldowner, address indexed _newowner);

    constructor() public {
        owner = msg.sender;
        emit LogOwnerTransferred(address(0), owner);
    }

    modifier onlyOwner {
        require(msg.sender == owner, "Only Owner can invoke this function");
        _;
    }
}
