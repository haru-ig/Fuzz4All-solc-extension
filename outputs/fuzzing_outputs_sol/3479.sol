pragma solidity ^0.8.0;

import "./MutatedStorage.sol";

contract Caller {
    MutatedStorage public storage_;
    constructor() {
        storage_ = new MutatedStorage(10);
    }
    function update() public {
        storage_.update(20);
    }
    function get() public view returns (uint256) {
        return storage_.storage_.a;
    }
}

pragma solidity ^0.8.0;

contract Caller_1 {
    MutatedStorage public storage_;
    constructor() {
        storage_ = new MutatedStorage(100);
    }
    function update() public {
        storage_.update(200);
    }
    function get() public view returns (uint256) {
        uint256 a = storage_.storage_.a;
        uint256 b = storage_.storage_.a;
        (, uint256 c) = getFoo(100);
        uint256 d = storage_.storage_.a;
        (a, b) = getFoo(0);
        uint256 e = storage_.storage_.a;
        (a, b) = getFoo(100);
        uint256 f = storage_.storage_.a;
        uint256 g = storage_.storage_.a;

        return a + b + c + d + e + f + g;
    }
    function getFoo(uint a) public pure returns (uint256, uint256) {
        uint256 b = a - 1;
        return (b, b);
    }
}

pragma solidity ^0.8.0;
contract Fallback_0 {
    function fallback() public {
        revert();
    }
}
contract Caller_2 {
    Fallback_0 public fallback_;
    constructor() {
        fallback_ = new Fallback_0();
    }
    function update() public {
        fallback_.fallback_.();
    }
    function get() public view returns (uint256) {
        uint256 a = fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_.fallback_;

        return a;
    }
}
