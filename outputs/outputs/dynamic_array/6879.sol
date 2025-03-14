pragma solidity ^0.8.0;
contract Test {
    constructor(bool _param) public {
        string memory s = "param";
        s = "renamed";
    }
}
contract CalldataArrayIn {

    receive() external {

        address[] memory arr = new address[](42);
        for (uint256 i = 0; i < 48; i++) {
            arr[i] = address(0);
        }





    }
}

contract Issue442 {
    import "./CalldataArrayIn.sol";
    function test() public {
        CalldataArrayIn m;
        CalldataArrayIn.test.value(0)(m);
    }
}
