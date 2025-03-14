pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Array2 {
    function sub(uint256 a, uint256 b)
        public
        pure
        returns (uint256 result)
    {

        (bool success, bytes memory data) = address(this).call{value: 0}(
            abi.encodeWithSignature("sub(uint256, uint256)", a, b)
        );
        require(success, "Array.sol: sub");
        result = abi.decode(data, (uint256));
    }
}
