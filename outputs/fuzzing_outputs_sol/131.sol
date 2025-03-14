pragma solidity ^0.8.0;
contract CallBackFallbackFunctionTwo {
    uint a;
    bytes3 a;
    fallback() external payable {
        a = 1;
    }
}
pragma solidity ^0.8.0;
contract Caller {
    fallback () external payable {
        assert(msg.data.length > 3);
    }
}
