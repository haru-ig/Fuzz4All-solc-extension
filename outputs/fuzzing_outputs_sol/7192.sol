pragma solidity ^0.8.0;
contract Example3 is IExample3{
    bool public isTrue = true;
    uint public x = 2;
    fallback() public payable {
        x += 4;
    }
    function a(bool _v1, uint _v2) public onlyTrue {
        x = _v2;
    }
    function b() public view returns(bool) {
        return isTrue;
    }
}
