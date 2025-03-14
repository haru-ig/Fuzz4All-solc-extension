pragma solidity ^0.8.0;



contract NoExplicitConstructor {
    uint8 constant constantNum = 1;
}
pragma solidity ^0.8.0;
import "./NonConstant.sol";
contract TestWithNonConstant {
    constructor() {
    }
}
pragma solidity ^0.8.0;
import "./Constant.sol";
contract TestWithConstant {
    constructor() {
    }
}
