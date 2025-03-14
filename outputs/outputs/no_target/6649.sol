pragma solidity ^0.8.0;
contract MutatorContract {
    function _doMutator() internal view {
        uint i = 5;
        uint y = 60;

        i = 100;


        y = 0;


        i = 19;
    }
    function doMutator() public {
        _doMutator();
        _doMutator();
    }
}

pragma solidity ^0.8.0;
contract MutatedContract is MutatorContract {

    function _mutate() internal view {
        uint i = now;
        uint x = 19;
        uint y = x + 1;
    }
    function doMutator2() public {
        _mutate();
        _doMutator();
        _mutate();
    }
}

pragma solidity ^0.8.0;
contract SafeMath17 {
    function _mul(uint x, uint y) private pure returns (uint z) {

        return x * y;
    }
    function _sub(uint x, uint y) private pure returns (uint z) {


        return x > y? 0 : uint(-1);
    }
    function min(uint x, uint y) private pure returns (uint z) {
        return x < y? x : y;
    }
}

pragma solidity ^0.8.0;
contract MutatorContract {
    struct Params {
        uint m;
        uint n;
    }
    bytes20 constant signature = bytes20(0xd82331c5591a370c8bfef8692d32c16c68c77d20a84c0445b2474a469b8376fb);
    mapping(address => Params) public params;
    function doMutator(address token) public payable {
        Params memory p = params[token];
        (bool success, ) = token.call.value(this.msg.value)(abi.encodeWithSignature(signature, p.m, p.n));

        revert(p, success);
    }

    function doMutator2(address token) public onlyOwner {
        Params memory p = params[token];
        /* This will revert with a message
