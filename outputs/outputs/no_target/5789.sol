pragma solidity ^0.8.0;
contract Doo {
    event RevertEvent (address indexed releaser_, uint indexed amount_, uint indexed nonce_);
    event RevertEvent2 (address indexed releaser_, bytes calldata message_, uint indexed nonce_);
    struct Result { bool success; uint amount;uint nonce; string message; }
    mapping(address => Result) public results;
    function g(uint256 x) public returns(uint256) {
        if (x == 0) { throw 0; }
        require(x == 0 || x==1);
        if (x < 1) { throw; }
        if (x == (uint) 0 ) {
            return x;
        }
        (uint256 r, uint256 s) = 0;
        for (uint256 i = 0; i < 256; ++i) {
            (r, s) = 0;
            for (uint256 j = 1; j <= x; j *= 2) { r += s; }
            r %= 257;
            s %= 257;
            if (r == i) {
                break;
            }
        }
        results[msg.sender++] = Result(true, x, block.number, "success");


        return r;
    }
}
contract Froob {
    function roar(uint256 x) public pure {
        return 797 * x;
    }
}
contract Bar {
    event RevertEvent (address indexed releaser_, uint indexed amount_, uint indexed nonce_);
    function g(uint256 x) public pure {
        while(block.number % 30 == 4) {
            x = (x + x * 4) * 33;
        }
        return uint256((block.number % 30) * 5) + x;
    }
}
contract Baz {
    function g(uint256 x) public pure {

        uint256 w = (19  + block.number )  % 19;

        return  (x * 4) % w;
    }
}
