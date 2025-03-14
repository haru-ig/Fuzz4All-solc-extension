pragma solidity ^0.8.0;
contract Array {
    uint[] public arr;

    uint function _min_uint (uint x, uint u) public pure returns (uint) {
        if (x == u) { return x; } else if (x > u) { return u ; } else { return x; }
    }

    bool function _add_int (uint x, uint u) public pure returns (uint) {
        if (u!= 0) {
            uint w = _min_uint (x, uint (maxUint - arr.length)) + u;
            return _min_uint (w, uint(maxUint - arr.length));
        } else { return x; }
    }

    function findMin() public pure returns (uint) {
        return _min_int (uint (arr.length), uint(maxUint - arr.length));
    }

    function findMax() public pure returns (uint) {
        return _min_int (uint(0), arr.length);
    }

    function _print_int_array () public pure {
        for (uint i = 0; i < arr.length; i = i + 1) {
            console.log ("index: "+ i + " value: " + arr[i]);
        }
    }

    struct Node {
        uint value;
        Address owner;
        Address nextInBlock;
    }

    Node[] public nodes;

    function _append_int(uint a) public pure {
        console.log("added: "+ a);
        if (a >0){
            console.log ( a > arr[uint (a-1) ] );
            for (uint i = uint(a-1); i!=0; i--) {
                arr[uint(i)] = arr[uint(i-1)] + 1;
            }
            arr[uint(0)] = a;
        }
    }

    struct AddressBookNode {
        uint index;

        Address addr;
        AddressListNode next;
        AddressListNode previous;
    }

    struct AddressListNode {
        Address index;
        Address addr;
        AddressBookNode next;
        AddressBookNode previous;
    }

    uint public balance;
    uint16 public index;
    AddressListNode public addrs;
    uint256 public maxUint;

    function add_addr (Address _addr) public {
        if (addrs.next.addr!= _addr){
        addrs.next.addr = _addr;
        addrs.next.next = _addr.addrList;
        addrs.addr = _addr;
        addrs.next.index = uint(addrs.length());
        addrs.addr.addrList.previous = addrs.next;
        addrs.next.addrList.next = addrs;

        addrs.next.addr.addrList.next.previous = addrs.next;
        addrs.index = uint(addrs.length());
        addrs.addr.addrList.previous =
