pragma solidity ^0.8.0;
contract Example {
    uint256 internal x;
    function func() public {
        x = 1;
        for (uint i = 0; i < 10; i++) {
            {
                x += 1;
            }
        }
    }
}

pragma solidity ^0.8.0;
contract Example {
    uint256 internal x;
    function func() public {
        uint256 localValue = x;
        for (uint256 i = 0; i < 10; i++) {
            localValue = localValue + 1;
        }
    }
}
