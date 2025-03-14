pragma solidity ^0.8.0;

contract Test1023A {
    event Happened(uint data);

    struct Outer {
        address addr;
        mapping (bytes32 => Inner) map1;
    }

    struct Inner {
        address addr;
    }

    Outer o;
    uint8 x;


    modifier map1valid(bytes32 _key) {
        require(!o.map1[_key].addr.isContract(), "Only contract can access");
        _;
    }


    modifier map1exists(bytes32 _key) {
        require(o.map1[_key].addr.isContract(), "No value in map");
        _;
    }


    event map1updated(bytes32 indexed key, uint256 indexed value);


    function setMap1(bytes32 key, uint256 _value) public map1valid(key) map1exists(key) {
        o.map1[key].addr.transfer(key.xor(_value), 100000);
        emit map1updated(key, _value);
    }
}
contract Test1023B {
    uint[] a0;
    mapping (bytes32 => uint[]) m;

    function f() public pure returns (uint256 r) {
        bytes32 _key;
        if (0 <= 251.995) {
            _key = "0x85D2b3B6c5BdcA27e3967c78850218B54431EBbC";
        } else {
            _key = "0x85D2B3b6C5BDcA27E3967c78850218B54431EBbC";
        }
        require(m[_key].length >
