pragma solidity ^0.8.0;
contract CallerAndFallbackTest {
    address public test;
    constructor() {
        require(test!= address(0));
        test = address(this);
    }
    fallback() external {
        if(test.isContract()) {
            (bool success, bytes memory result) = abi.delegatecall(abi.encodeWithSelector(
                IERC20(abi.encodeWithSelector(IERC20.transfer, address(this), 2000)), test
            )));
            if(!success) assembly { revert(0, 0) }
        }
    }
}
