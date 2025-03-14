pragma solidity ^0.8.0;
contract MutatingContract
{
    function mutatedFunction()
        public
        pure
        returns (bool)
    {
        return address(this) > address(0x123);
    }
}
contract Test
{
    function test() public pure returns (string memory) {
        string memory _data = "";
        uint counter = 0;
        while(counter < 100) {
            _data = string(_data) + test().text;
            counter = counter + 1;
        }
        return _data;
    }
}
