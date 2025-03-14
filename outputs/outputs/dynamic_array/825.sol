pragma solidity ^0.8.0;
import "https://github.com/ProofFinance/gsn-libraries-solidity/contracts/MathLib.sol";
library MyLib4{
    using MathLib for uint256;
    const uint256 MAX_SIZE = 1;
    function f() private returns(uint256) {
        uint[] memory arr = new uint[](MAX_SIZE);
        uint256 result = arr.push(3);
        for(uint i = 0; i < arr.length; i++) {
            result = result.max(arr[i]);
        }
    }
}
