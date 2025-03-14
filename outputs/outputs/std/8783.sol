pragma solidity ^0.8.0;
contract Mutated128x64 {
    uint8 x;
}

pragma solidity ^0.9.0;
contract Mutated32x32 {
}

pragma solidity ^0.10.0;
interface MutateString {
    function f(string calldata) external;
}
pragma solidity ^0.8.0;
contract Mutated32x32WithString {
    MutateString memory memory m;
    string memory s;
}
