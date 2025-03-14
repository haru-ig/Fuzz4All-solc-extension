pragma solidity ^0.8.0;
contract H {
	struct Node{ uint256 f; uint256 s; bool isUsed; }
	mapping(uint256 => Node) rootNodes;
	Node node;
	constructor(uint256 i) public{ rootNodes[i] = Node(f=0,s=0, isUsed=true); }
    function addNode(uint256 x) public{
		if (x > rootNodes[node.f].f) {
			return;
		}
		var h = uint256(keccak256(abi.encodePacked(x)));
		Node storage newNode = rootNodes[h];
		newNode.f = rootNodes[node.f].f;
		newNode.s = node.s;
		newNode.isUsed = true;
		rootNodes[h] = newNode;
		if (node.s >= newNode.s && newNode.s!= 0) {
			node.s = newNode.s;
			if ((rootNodes[h].f << 1) <= node.f) {
				return;
			}
			rootNodes[h].isUsed = false;
			newNode.s = newNode.s + node.s;
			node = newNode;
		} else {
			node.s = newNode.s + node.s;
			node = newNode;
		}
	}
}
