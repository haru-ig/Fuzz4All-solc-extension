pragma solidity ^0.8.0;
 contract MutatedCaller {
    struct Memo {

        uint x = 5;
    }

    function mutate() public pure returns(Memo memory) {
        return Memo({x: 10});
    }
}
