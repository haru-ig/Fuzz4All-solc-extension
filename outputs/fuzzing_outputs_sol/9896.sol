pragma solidity ^0.8.0;
contract OldContract {
    uint constant public valueOf = 1 ether;
    uint constant public constant oldValueOf = valueOf;

    fallback() external payable {
        uint a = valueOf;
        require((oldValueOf / valueOf) == 2);

    }
}
