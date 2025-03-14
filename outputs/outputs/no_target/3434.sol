pragma solidity ^0.8.0;
contract m02 is m01{
    address[] A;
    function m2() public view {
        print("m2: " + A.length);
    }
    function M2(address _b) public {
        A.push(_b);
    }
}
