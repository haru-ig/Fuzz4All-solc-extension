pragma solidity ^0.8.0;
contract Example5 {
    receive () external {

    }

    fallback () external payable {}
}
contract Example5 {
    receive () external {
        uint256 i;
        assembly {
            i := 0
        }
    }

    fallback () external payable {}
}
