pragma solidity ^0.8.0;
contract Mutate_0022 {
    function f() public pure returns (bytes memory) {
        return "bad";
    }
}

pragma solidity ^0.8.0;
contract Mutate_0023 {
    function f() public pure {
        bytes memory b = "hello";
        assert(b.length <= 2);
        (b[1] == "o");
    }
}

pragma solidity ^0.8.0;
contract Mutate_0024 {
    constructor(uint256 a) public { require(a >= 0, "negative"); }
    function f() public pure returns (bytes memory) {
        return "bad";
    }
}
