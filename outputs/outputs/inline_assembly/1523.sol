pragma solidity ^0.8.0;
struct AddressArray {
    uint256 c;
    address[] elements;
}
contract Mutant {
    uint256[] public a_internal;
    address[] public b;
    uint256 public c_internal;
    uint256 public c;
    address[] public c_internal_b;
    uint128 public d;
    address[] public elements;
    uint256 public fn_internal;
    address public fn_internal_2;
    uint256 public h;
    uint256 public i;
    uint256 public j;
    uint256 public j_internal;
    uint256 public j_internal_2;
    uint256 public k;
    uint256 public k_internal;
    uint256 public fn_internal_3;
    uint128 public fn_internal_4;
    uint256 public idx;
    uint256 public k_internal_b;
    uint256 public l;
    uint256 public m;
    uint256 public n;
    uint256 public o;
    uint256 public p;
    uint256 public q;
    uint256 public r;
    uint256 public s;
    uint256 public t;
    uint256 public u;
    uint256 r_init_uint;
    mapping(uint256 => bool) public values;
    constructor (uint256 m, uint256 n, uint256 o, uint256 p, uint256 q, uint256 r, uint256 s, uint256 t, uint256 u) public {
    }
    function setElements(address[] memory _elements) public {
        elements = _elements;
        r_init_uint = r;
    }
    function getElements() public public view returns(address[] memory) {
        return elements;
    }
    function add(address _e) public {
        c = c + 1;
        a = a + 2;
        _e = _e + 3;
