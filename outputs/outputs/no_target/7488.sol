pragma solidity ^0.8.0;
contract Mutant_new2 {
    uint public constant nonConstant2 = 1;
}

pragma solidity ^0.8.0;
contract Mutant_new3 {
    mapping(uint => uint) values;

    function read(uint idx) public view returns (uint) {
        return values[idx];
    }

    modifier no(uint _idx) {
        assert (values[_idx] == 0);
        _;
    }

    uint public zeroValue = 0;

    function write(bytes32 key) public no(0) {
        write_nocheck(key, 0);
    }

    function write_nocheck(bytes32 key, uint value) public {
        values[key] = value;
    }
}

pragma solidity ^0.8.0;
contract Mutant_new3t {
    uint[] public values;

    function set() public {
        set_nocheck(0);
    }

    function set_nocheck(uint idx) public {
        values[idx] = 0;
    }
}
