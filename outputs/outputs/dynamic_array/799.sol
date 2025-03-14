pragma solidity ^0.8.0;
contract DYNAMO{
    uint256[42] public y;
    function isTrue(bool _x) pure public returns(uint) { return 1; }
}
pragma solidity >=0.8.0 <0.9.0;
contract Test is DYNAMO {
    function isTrue(bool _x) pure public returns(uint) { y[256] = 1; }
    function isTrue(bool _x) public {
        y[123] = isTrue(false);
        require(y[123] == 0);
    }
}
