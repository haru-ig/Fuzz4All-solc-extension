pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
contract Demon{
    uint8 public constant _BYTE_SIZE = 8;
    uint8 public constant _BYTE_MASK = 0xFF;
    uint256 public constant _UINT72_SIZE = 72;
    uint256 public constant _UINT72_MASK = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    function getNumberAsString(bytes memory b) public pure returns (uint256) {
        uint256 number = uint256(0);
        uint256 sign = 0;
        uint8 shift = 0;
        for(uint256 i=b.length; i>0; i--){
            sign = uint256(uint8(b[i-1]))*((2**shift));
            shift += _BYTE_SIZE;
            if(b[i-1] == 0){
                return number+sign;
            }
        }
        return uint256(uint256(0));
    }
    function getNumber(uint256 x) public pure returns (uint256) {
        if(x > _UINT72_MASK)
        {
            return uint256(uint160(x));
        }
        return x;
    }
}
contract Demo {



    function getWrapperDataSize() public pure returns (bytes32){
        return address(this).functions.getWrapperDataSize.selector;
    }

    function getWrapperData() public pure returns (bytes4){
        return address(this).functions.getWrapperData.selector;
    }
}
