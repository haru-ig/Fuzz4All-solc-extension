pragma solidity ^0.8.0;
contract newY {
    function func() public {
        uint256 x = 0;
        while (x!= 123) {
            x++;
        }
    }
}

pragma solidity ^0.8.0;
contract newY {
    function func() public {
        bytes memory x;
        assembly {
            x := mload(0x4000)
        }
    }
}
