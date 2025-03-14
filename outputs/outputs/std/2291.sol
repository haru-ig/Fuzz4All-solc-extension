pragma solidity ^0.8.0;
interface IMutator {
    function mutate() external returns (uint256);
}

pragma solidity ^0.8.0;
contract Memory {
    uint256[] public foo;
    function setFoo(uint256 _foo) external {
        require(_foo > 0, "foo cannot be zero");
        foo = _foo[](foo);
    }
    function getFoo() public view returns (uint256) {
    }
    function getFooLength() public view returns (uint256) {
    }
}
