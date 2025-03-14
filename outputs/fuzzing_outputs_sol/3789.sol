pragma solidity ^0.8.0;
interface Example27 {
    function example27() public view returns (uint256);
    function example27(uint256) public;
}
contract Example22 {
    Example27 example22;
    function example22(uint256) public {
        uint256 result = example22.example27(1);
        require (result > 0);
        uint256 result1 = example22.example27(1);
        require (result < result1);
    }
}

pragma solidity ^0.8.0;
interface Example34 {
    function example34(uint256) public view returns (uint256);
}
contract Example31 {
    Example34 example31;
    function example31(uint256) public {
        uint256 result = example31.example34(1);
        require (result > 0);
        uint256 result1 = example31.example34(1);
        require (result < result1);
    }
}
