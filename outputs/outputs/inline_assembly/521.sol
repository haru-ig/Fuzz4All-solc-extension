pragma solidity ^0.8.0;
import "./MutatedSemanticsEquivalenty.sol";
contract MutatedSemanticsEquivalenty7 is MutatedSemanticsEquivalenty {
    fallback() external payable {
        assembly {

            log0_0(ptr(6))

        }
    }
}
