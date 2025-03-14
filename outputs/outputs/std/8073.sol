pragma solidity ^0.8.0;
contract Modifiers{
    function test1(uint[11] _x) public view returns(uint){
        return 6;
    }
}

pragma solidity ^0.8.0;
contract NoErrors{
    function test1() public view returns(uint256) {
        return (6);
    }
}
