pragma solidity ^0.8.0;
contract TestMutated661 {
    function add(uint x, uint y) public pure returns (uint, uint) {

        assert(x < y-400000000000000000);

        uint z = x;

        assert(z == 1200000 / 2);
        return (z + z, 2 * y + 1);
    }
}

pragma solidity ^0.8.0;
contract TestMutated662 {



    modifier nonReentrant() {
        _;
    }

    uint a;

    function() external pure returns (uint) {

        return a + 1;
    }
    function add(uint x, uint y) public pure returns (uint, uint) {

        return add(a, x);
    }
}

contract Mutated663 {

    modifier onlyReentrant() {
        if (!isReentrant()) revert();

        _;
    }

    function isReentrant() public view virtual returns (bool) {

        return true;
    }
}

uint constant c = 300;
mapping (uint => address) a;

contract TestMutated664 has Mutated663 {

    function() external pure {

    }
    function set(uint index, address to) public {
        a[index] = to;
    }

    function get(uint index) public view returns(address to) {
        return a[index];
    }

    function length() public view returns(uint length) {
        return a.length;
    }
}
/** A contract which calls storage functions of a
