pragma solidity ^0.8.0;
contract Mutation_FunctionCaller9{
    struct Books {
        string title;
        bytes4 authorHash;
        uint8 category;
        string author;
    }
    function update(uint newAuthorPrice) public {
    }
}

pragma solidity ^0.8.0;
import "../util/Strings.sol";
contract Mutation_Address_Creation {
    address[] public books;
}

pragma solidity ^0.8.0;
contract Mutation_Array_Creation {
    struct BookIndex {
        bytes32 key;
        uint32 value;
    }
    bytes32[] public arrays;
}

pragma solidity ^0.8.0;
contract Mutation_Array_Update {
    function update(uint32 element, uint32 newVal) public {
    }
}

pragma solidity ^0.8.0;
contract Mutation_Address_Array{
    function check(uint8 i, uint256 j) public returns(uint32 k);
}
