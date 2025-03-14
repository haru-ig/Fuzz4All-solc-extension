pragma solidity ^0.8.0;
interface IExample3 {
    function a(bool _v1, uint _v2) external;
    function b() external view returns(bool);
}
contract Example3 is IExample3{
    bool public isTrue = true;
    uint public x = 2;

    modifier onlyTrue {
        require(isTrue);
        _;
    }

    modifier onlyPublic {
        _;
    }
    function a(bool _v1, uint _v2) public onlyTrue {
        x = _v2;
    }
    function b() public view onlyPublic returns(bool) {
        return isTrue;
    }
}
