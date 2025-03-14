pragma solidity ^0.8.0;
interface ICallers {
    function foo(uint a) external;
    function bar(uint b) external;
    function baz(uint c) external;
}

pragma solidity ^0.8.0;
contract Caller is ICallers {
    fallback () external payable {}
    receive () external payable {}
}

pragma solidity ^0.8.0;
contract C11 {
    receive () external payable {}
}

pragma solidity ^0.8.0;
contract C12 {
    receive () external payable {}
    fallback () external payable {}
}

pragma solidity ^0.8.0;
contract C13 {
    fallback () external {}
    receive () external {}
}

pragma solidity ^0.8.0;
contract C14 {
    receive () external {}
    fallback () external {}
}
