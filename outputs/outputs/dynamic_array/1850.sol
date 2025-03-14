pragma solidity ^0.8.0;
library ArrayInitializer {
    function initializeArray(uint[] memory a) internal pure {
        assembly {
            a := a[320]
        }
    }
    function initializeArray(uint256[] memory a) internal pure {
        assembly {
            a := a[320]
        }
    }
}
