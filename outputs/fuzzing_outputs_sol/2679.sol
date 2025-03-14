pragma solidity ^0.8.0;
import "https://github.com/oraclize/ethereum-api/blob/b42146b063c7d6ee1358846c198246239e9360e8/oraclizeAPI_0.4.25.sol";
contract ModifyCall {

    function() public payable {}
}



pragma solidity ^0.8.0;
import "../modifications/modifyCall.sol";
contract Caller {
    function () public payable {}
    function isSuccessless() public view returns (bool) {
        return true;
    }
}

pragma solidity ^0.8.0;
contract CallerWithFallback
{
    bool public success;
    function () external {
        if (CallerWithFallback.isSuccessless()) {
            success = true;
        }
    }
}
