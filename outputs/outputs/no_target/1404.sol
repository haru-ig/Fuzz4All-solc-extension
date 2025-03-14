pragma solidity ^0.8.0;
contract Mutate_0024_256 {
    constructor(uint256 a) public {
        require(a >= 0, "Bad");
        a++;
        require(a > 0, "Bad");
    }
}


contract Mutate_0024_256 {
    constructor(uint256 a) public {
        a++;
        a--;
        a++;
        a>>=(10);
    }

    function bad() private pure returns (uint256) {
        uint256 a = 777;
        uint256 b = 1;
        a/=b;
    }
}
contract Mutate_0024_256 {
    address self;
    constructor(uint256 a) public {
        self = msg.sender;
    }
    function safeMutated(uint256 a)
        public
    {
        (bool b, ) = self.call{value: a}(abi.encodeWithSignature("good()"));
        self.transfer(b);
    }
    function bad() public {
        self.safeMutated(0);
    }
}
pragma solidity ^0.8.0;
contract SelfCall_0025 {
    uint256 internal immutable a;

    constructor(uint256 _a) public {

        a = _a;
    }

    function good() external { a = 5; }
}
pragma solidity ^0.8.0;
contract SelfCall_0026 {
    uint256 internal immutable a;
    bool private isGood;

    constructor(uint256 _a) public {
        isGood = true;
        a = _a;
    }

    function good() public {
        if (isGood) { a = 5; }
        else {
        }

    }
}
