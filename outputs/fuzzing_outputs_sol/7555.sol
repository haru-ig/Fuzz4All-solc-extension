pragma solidity ^0.8.0;
contract SensibleFallbackModifier {

}

pragma solidity ^0.8.0;
contract BadFallbackModifier {

}

pragma solidity ^0.8.0;
contract FallbackAndFallbackModifier {
    fallback() external payable {}
}
