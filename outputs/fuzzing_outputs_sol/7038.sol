pragma solidity ^0.8.0;
import ".";
contract CallerFallback {
    receive () external call {}
}
library Simple {

    function Fallback() public payable fallback {
    }
}
contract SemanticallyEquivalent {

    function Fallback() public payable fallback {}

}
