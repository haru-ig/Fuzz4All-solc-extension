pragma solidity ^0.8.0;
contract MyContract {
    uint[] public arr;
    bytes32[] public buf;
    struct Node {
        uint x;
        Node[] links;
    }
    mapping(uint => Node) public _node;
    constructor(uint[] memory _a, bytes32[] memory _b) {
        arr = _a;
        buffer = _b;
    }
    function mutated() public {
        for(uint i=0; i<3; i++) {
            Node storage n;
            add(1, 2, n);
		}
	}
    function add(uint x, uint y, Node storage n) internal {
        n.x += x + y;
        require(n.x >= 3);
        n.links.push(Node({x: x + y}));
    }
    function mutated2(uint x, uint y) public {
        uint[] memory _a = arr;
        bytes32[] memory _b = buffer;
        require(_a[0]%2 == 1);
        require(_b[0]%2 == 1);
        _a[0] += x;
        _b[0] += y;
	}
	}
