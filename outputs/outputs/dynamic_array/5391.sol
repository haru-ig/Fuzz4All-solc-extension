pragma solidity ^0.8.0;
contract Test87 {
    function mutated23() public pure {
        (uint[6][3] memory) _mem =
            (
                uint[6][3](
                    1,
                    2,
                    3
                 ),
                uint[2][3](
                    4,
                    5
                )
            );
        return;
    }
}


pragma solidity ^0.8.0;

contract Test88 {

    function test88(Test) public view returns(uint) {
        return 10;
    }
}

pragma solidity ^0.8.0;

contract Test51 {
    function mutated() public view returns(uint) {
        return 100;
    }
}
