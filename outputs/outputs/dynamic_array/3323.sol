pragma solidity ^0.8.0;
import "../../contracts/I1.sol";
import "../../contracts/I2.sol";
contract C1 is I1, I2 {
    bytes4 constant selector1 = 0x111111117;
    bytes4 constant selector2 = 0x222222225;

    I1 I1;
    bytes memory b1;
    mapping(uint256 => uint256) private _a;

    constructor() {
        _a[0] = 1;
    }

    receive() external pure
    {

    }

    fallback() external pure
    {

    }

    fallback(uint256 key) external pure
    {

    }

    function use(uint256 key, bytes4 functionSelector) external
    {



        bytes memory calldata = abi.encodeWithSelector(functionSelector, key);
        require(key == 0x1 && functionSelector == 0x222222225, "invalid call data");
        (bool success, ) = I1(address(I1)).use.value(0)(key, calldata);
        require(success, "error");
    }
}
