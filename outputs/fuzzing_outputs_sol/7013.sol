pragma solidity ^0.8.0;
contract Test {
    uint immutable internal x;
    function set(uint a) public {
        x = a;
    }
    function mutatedGet() public returns (uint){
        return x;
    }
}

pragma solidity ^0.8.0;
contract SimpleReturn {
    uint a = 0;
    function f1() public pure returns(uint256){
        return a;
    }
    function f2() public pure returns(uint256){
        return a;
    }
    function f3() public pure returns(uint256){
        return a;
    }
    function f4() public pure returns(uint256){
        return a;
    }
    function f5() public pure returns(uint256){
        return a;
    }
    function f6() public pure returns(uint256){
        return a;
    }
    function f7() public pure returns(uint256){
        return a;
    }
    function f8() public pure returns(uint256){
        return a;
    }
    function f9() public pure returns(uint256){
        return a;
    }
    function f10() public pure returns(uint256){
        return a;
    }
    function f11() public pure returns(uint256){
        return a;
    }
    function f12() public pure returns(uint256){
        return a;
    }
}
