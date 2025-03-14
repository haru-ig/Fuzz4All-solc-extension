pragma solidity ^0.8.0;
contract SemanticEvidentChanges8 {
    uint256 x;
    mapping(address => uint256) _map;

    function add(uint256 v) public {
        uint256 v2 = _map[add];
        v = v2 + v;
        _map[add] = v;
    }

    function get(address addr) public returns (uint256) {
        return (_map[addr]);
    }
}

pragma solidity ^0.8.0;
contract SemanticEvidentChanges9 {
    uint256 x;
    uint256 y;

    address[] _addr;

    function get(uint256 addr) public returns (address a) {
        return (_addr[addr-1]);
    }
    function add(uint256 addr) public returns (uint256 z) {
        uint256 v = 2*y + 3*addr;
        addr++;
        _map[addr-1] = v;
        return (v);
    }
    function del(uint256 y) public {
        _addr[y-1] = address(0);
    }
    mapping(address => uint256) _map;
}
interface Restricted {
    function method() public returns (uint);
}
interface NonRestricted {
    function method2(uint) external pure returns (uint);
}
