pragma solidity ^0.8.0;
contract C {
    bytes32 my_bytes;
    uint i;
    bool b;
    uint r;
    bool r5;
    uint s;

    Constructor(uint _i) public {
        my_bytes = keccak256(abi.encodePacked("This is the contract "));
        i = _i;
    }

    function set(bool _b) public {
        b = _b;
    }

    function set2(uint _r) public {
        r = _r + 5;
    }

    bool is_even(uint x) private pure returns(bool) {
        return (x % 2 == 0);
    }

    function greet(address _taker, uint _price) public returns(uint){
        r5 = _b;
        s = _price;
        r5 = not(a, a_);
        r5 = is_even(r5 + i );
        r5 = not(r, r5 );
        r5 = is_odd(a);
        return (uint)(r5 + 2);
    }
}
