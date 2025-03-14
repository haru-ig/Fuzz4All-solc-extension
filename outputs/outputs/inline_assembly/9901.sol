pragma solidity ^0.8.0;
contract MutantMutantContract {
    address owner;
    constructor() {
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(owner == msg.sender,"Not the owner");
        _;
    }
    function g() public onlyOwner {
    }
    function f() public onlyOwner {
    }
    function c() public onlyOwner {
    }
}

```

**Example 5. ENS Nameserver**

```solidity
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/access/Ownable.sol';

contract ENSNameServer is Ownable {
    uint16 public baseSubnode;
    string public adminNode = "";
    string public subnode = "";
    mapping(string => bool) public validSubnodes;

    mapping(string => uint256) public mappings;

    constructor() public {
    }

    function setupNode(string memory _baseSubnode, string memory _adminNode) public onlyOwner {
        baseSubnode = uint16(_baseSubnode);
        adminNode = _adminNode;
        subnode="";
    }




    function getNode(string memory _subnode) public view returns (string memory) {
        return keccak256(abi.encodePacked(_adminNode,adminNode,baseSubnode,baseSubnode,_subnode,0));
    }




    function getSubnode(bytes32 _nodeId) public view returns (bytes32) {
        return keccak256(abi.encodePacked((_nodeId,_nodeId)));
    }



    function getBaseNode(bytes32 _subnode) public view returns (bytes32) {
        bytes32 nodeBytes = getNode(_subnode);
        bytes32 subBytes = getSubnode(nodeBytes);
        return keccak256(abi.encodePacked((nodeBytes,_nodeId)));
    }
