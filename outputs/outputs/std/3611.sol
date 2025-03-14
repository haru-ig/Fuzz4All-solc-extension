pragma solidity ^0.8.0;
contract Convert {
    uint uint_current;
    bytes bytes_current;
    address address_current;
}

pragma solidity ^0.8.0;
contract Math {
    uint256 uint256_current;
}

pragma solidity ^0.8.0;
contract Memory {
    uint[] array_uints;
    bytes[] array_bytes;
    address[] array_addresses;
    uint[] uints_for_comparison;
    mapping (uint => int) in_memory_map;
}

pragma solidity ^0.8.0;
contract Multiprecision {
    function add(uint256 x, uint y) public pure returns(uint256);
    function sub(uint256 x, uint256 y) public pure returns(uint256);
    function mul(uint256 x, uint256 y) public pure returns(uint256);
    function div(uint x, uint y) public pure returns(uint256);
    function subFrom(uint256 x, uint y) public pure returns(uint256);
    function sqrt(uint256 x) public pure returns(uint256);
}

pragma solidity ^0.8.0;
contract Math {
    function subFrom(uint x, uint y) public pure returns(uint256);
    function sqrt(uint x) public pure returns(uint256);
}

pragma solidity ^0.8.0;
contract Random {
    function rand() public pure returns(uint256);
    function randArray(uint max) public pure returns(uint256[6]);
}
