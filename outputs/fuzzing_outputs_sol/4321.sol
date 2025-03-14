pragma solidity ^0.8.0;
contract EscapedFallbackCallerNoModifier {

    receive() {}
}

pragma solidity ^0.8.0;
contract EscapedFallbackCallerWithCalldata {
    constructor () {}

    receive() external payable { }


}
