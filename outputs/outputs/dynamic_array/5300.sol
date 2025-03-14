pragma solidity ^0.8.0;
contract Test31 {
    function test200xContract(Test30[] memory t) public {
        t[123] = Test30(new Test30());
        t[321].name = "200x";
    }
}
