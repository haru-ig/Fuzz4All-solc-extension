pragma solidity ^0.8.0;
contract semantic_failuremutablefallback_mutable
{
    uint constant n = 5;
    receive() payable external {
        return;
    }
}

pragma solidity ^0.8.0;
contract semantic_failuremutablefallback_mutable_receivable {
    uint constant n = 5;
    receive() payable {
        return;
    }
}

pragma solidity ^0.8.0;
contract semantic_failuremutablefallback_immutable {
    uint constant n = 5;
    receive() payable external pure {}
}
pragma solidity ^0.8.0;
contract semantic_fallbackmutablefallback_immutable_receivable {
    uint constant n = 5;
    receive() payable external pure {}
}

pragma solidity ^0.8.0;
contract nonsemantic_fallbackmutablefallback_immutable {
    uint constant n = 5;
    receive() pure external {}
}

pragma solidity ^0.8.0;
contract nonsemantic_fallbackmutablefallback_receivable {
    uint constant n = 5;
    receive() external pure {}
}
